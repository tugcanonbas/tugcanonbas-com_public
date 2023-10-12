//
//  Footer.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 18.05.2023.
//

import Plot

struct Footer: Component {
    let layout: Layout

    init(_ layout: Layout = .base) {
        self.layout = layout
    }

    var body: Component {
        Plot.Footer {
            if layout == .base {
                Link(url: "mailto:tgcn@tugcanonbas.com?subject=Reaching%20Out%20From%20tugcanonbas.com%20👋🏻") {
                    Node.i(.class("fa-solid fa-envelope"))
                    Text("tgcn@tugcanonbas.com")
                }
                .class("mailto")
            }

            List {
                ListItem {
                    Link(url: "https://www.linkedin.com/in/tugcanonbas") {
                        Node.i(.class("social fa-brands fa-linkedin"))
                    }
                    .linkTarget(.blank)
                }
                ListItem {
                    Link(url: "https://github.com/tugcanonbas") {
                        Node.i(.class("social fa-brands fa-square-github"))
                    }
                    .linkTarget(.blank)
                }
                ListItem {
                    Link(url: "https://apps.apple.com/developer/tugcan-onbas/id1606259525") {
                        Node.i(.class("social fa-brands fa-app-store-ios"))
                    }
                    .linkTarget(.blank)
                }
                ListItem {
                    Link(url: "https://www.behance.net/tugcanonbas") {
                        Node.i(.class("social fa-brands fa-square-behance"))
                    }
                    .linkTarget(.blank)
                }
                ListItem {
                    Link(url: "https://twitter.com/tgcn_dev") {
                        Node.i(.class("social fa-brands fa-square-twitter"))
                    }
                    .linkTarget(.blank)
                }
            }
        }
    }
}
