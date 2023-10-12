//
//  HomePage.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 17.04.2023.
//

import Plot

struct HomePage: Page {
    var language: AvailableLanguages
    var navigation: NavigationItem = .home

    init(language: AvailableLanguages) {
        self.language = language
    }

    var title: String {
        localized("pageTitle")
    }

    var head: [Node<HTML.HeadContext>] {
        [
            .globalStyle("home"),
            .globalStyle("homeHero"),
            .meta(.name("description"), .content(localized("meta-description"))),
            .meta(.name("keywords"), .content(localized("meta-keywords"))),
        ]
    }

    var body: Component {
        Div {
            H2 {
                localized("welcoming").parseLinks(linkClass: "welcoming-link")
            }
            H1 {
                localized("description").parseLinks(linkClass: "hero-link")
            }
            Paragraph {
                localized("resume").parseLinks(linkClass: "resume-link")
            }
            .class("resume-text")
        }
        .class("home-hero-wrapper")
    }
}
