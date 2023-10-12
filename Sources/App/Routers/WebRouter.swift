//
//  WebRouter.swift
//  authoconnectable
//
//  Created by Tuğcan ÖNBAŞ on 16.04.2023.
//

import Plot
import Vapor

struct WebRouter: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get(use: index)
        routes.get(.catchall, use: catchAll)

        for language in AvailableLanguages.allCases {
            let pageController = PageController(language: language)

            routes.group(language.path) { languageGroup in
                languageGroup.get(use: pageController.home)
                languageGroup.get("socials", use: pageController.socials)
            }
        }
    }

    func index(req _: Request) async throws -> IndexPage {
        IndexPage()
    }

    func catchAll(req: Request) async throws -> NotFoundPage {
        // MARK: - Custom 404 page

        let path = req.url.path
        let params = path.split(separator: "/")
        let language = params.first

        var languageEnum: AvailableLanguages

        if language == "de" {
            languageEnum = .de
        } else if language == "tr" {
            languageEnum = .tr
        } else {
            languageEnum = .en
        }

        return NotFoundPage(language: languageEnum)
    }
}
