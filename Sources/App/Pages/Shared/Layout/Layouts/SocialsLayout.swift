//
//  SocialsLayout.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 21.05.2023.
//

import Plot

struct SocialsLayout: Layoutable {
    func render(page: Page) -> HTML {
        let baseHead: [Node<HTML.HeadContext>] = [
            // MARK: - Meta

            .title(page.title),

            // MARK: - Viewport

            .meta(.name("viewport"), .content("width=device-width, initial-scale=1")),

            // MARK: - Charset

            .meta(.charset(.utf8)),

            // MARK: - Favicons

            .favicon(page.favIcon),
            .link(.rel(.icon), .type("image/x-icon"), .sizes("180x180"), .href("/assets/img/apple-touch-icon.png")),

            // MARK: - Global CSS

            .globalStyle("global"),
            .globalStyle("background"),
            .globalStyle("header"),
            .globalStyle("footer"),

            // MARK: - Google Fonts

            .link(.rel(.preconnect), .href("https://fonts.googleapis.com")),
            .link(.rel(.preconnect), .href("https://fonts.gstatic.com"), .crossorigin(true)),
            .link(.rel(.stylesheet), .href("https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap")),

            // MARK: - Font Awesome

            .script(.src("https://kit.fontawesome.com/b7e0953933.js"), .attribute(named: "crossorigin", value: "anonymous")),
        ]

        let html = HTML(head: baseHead + page.head) {
            Div {
                Header()
                page
                Footer(.socials)
            }
            .class("main-wrapper")
            Background()
            Node.script("addLanguageToLink")
        }

        return html
    }
}
