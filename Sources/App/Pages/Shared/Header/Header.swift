//
//  Header.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 20.05.2023.
//

import Plot

struct Header: Component {
    let layout: Layout

    init(_ layout: Layout = .base) {
        self.layout = layout
    }

    var body: Component {
        Plot.Header {
            Div {
                Link(url: "/") {
                    Image(url: "/assets/img/favicon.svg", description: "Logo")
                        .class("logo")
                }
            }
            .class("title-wrapper")

            Div {
                Link(url: "/tr") {
                    Text("TR")
                }
                .class("switcher-item")
                .attribute(named: "name", value: "switcher-item")

                Span {
                    Text("/")
                }
                .class("switcher-item")

                Link(url: "/") {
                    Text("EN")
                }
                .class("switcher-item")
                .id("default")
                .attribute(named: "name", value: "switcher-item")

                Span {
                    Text("/")
                }
                .class("switcher-item")

                Link(url: "/de") {
                    Text("DE")
                }
                .class("switcher-item")
                .attribute(named: "name", value: "switcher-item")

                Node.script("languageStyle")
                Node.script("changeLanguage")
            }
            .class("language-switcher")
        }
    }
}
