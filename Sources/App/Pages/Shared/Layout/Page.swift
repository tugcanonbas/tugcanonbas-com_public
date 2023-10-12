//
//  Page.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 17.04.2023.
//

import Plot
import Vapor

protocol Page: AsyncResponseEncodable, Component {
    var language: AvailableLanguages { get set }
    var title: String { get }
    var navigation: NavigationItem { get }
    var localizationText: String { get }
    var layout: Layout { get }
    var head: [Node<HTML.HeadContext>] { get }
    var favIcon: String { get }

    var body: Component { get }
}

extension Page {
    var layout: Layout { .base }
    var title: String { "Tuğcan ÖNBAŞ - Multidisciplinary Designer & Developer" }
    var head: [Node<HTML.HeadContext>] { [] }
    var favIcon: String { "/assets/img/favicon.svg" }
    var localizationText: String { LocalizationService(page: navigation.rawValue, language: language).getPage() }

    func convert() -> HTML {
        switch layout {
        case .base:
            return BaseLayout().render(page: self)
        case .socials:
            return SocialsLayout().render(page: self)
        }
    }

    func encodeResponse(for _: Request) async throws -> Response {
        let response = Response()
        response.body = .init(string: convert().render())
        response.headers.contentType = .html
        return response
    }

    func localized(_ key: String) -> String {
        return key.localizeString(localizationText, language)
    }
}
