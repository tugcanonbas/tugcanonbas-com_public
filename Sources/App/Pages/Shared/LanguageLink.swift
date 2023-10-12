//
//  LanguageLink.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 20.05.2023.
//

import Plot

struct LanguageLink: Component {
    var url: String
    var content: Component

    init(_ navigationItem: NavigationItem, @ComponentBuilder builder: () -> Component) {
        url = navigationItem.url
        content = builder()
    }

    var body: Component {
        Link(url: url) {
            content
        }
        .attribute(named: "name", value: "language-link")
    }
}
