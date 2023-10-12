//
//  IndexPage.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 20.05.2023.
//

import Plot

struct IndexPage: Page {
    var language: AvailableLanguages = .en
    var navigation: NavigationItem = .index
    var head: [Node<HTML.HeadContext>] {
        [
            .meta(.name("description"), .content(localized("meta-description"))),
            .meta(.name("keywords"), .content(localized("meta-keywords"))),
        ]
    }

    var body: Component {
        Div {
            Node.script("getLanguage")
        }
    }
}
