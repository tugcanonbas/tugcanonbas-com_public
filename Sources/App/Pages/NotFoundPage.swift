//
//  404Page.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 17.04.2023.
//

import Plot
import Vapor

struct NotFoundPage: Page {
    var language: AvailableLanguages
    let navigation: NavigationItem = .notFound
    let head: [Node<HTML.HeadContext>] = [
        .globalStyle("notFound"),
    ]

    init(language: AvailableLanguages) {
        self.language = language
    }

    var title: String {
        localized("pageTitle")
    }

    var body: Component {
        Div {
            H2(localized("404"))
            H1(localized("notFound"))
            Div {
                H1 {
                    localized("getBack").parseLinks(linkClass: "hero-link", linkTarget: .parent)
                }
            }
        }
        .class("not-found-page")
    }
}
