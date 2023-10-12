//
//  SocialsPage.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 21.05.2023.
//

import Plot

struct SocialsPage: Page {
    var layout: Layout = .socials
    var language: AvailableLanguages
    var navigation: NavigationItem = .socials

    init(language: AvailableLanguages) {
        self.language = language
    }

    var title: String {
        localized("pageTitle")
    }

    var head: [Node<HTML.HeadContext>] {
        [
            .globalStyle("socialsPage"),
            .meta(.name("description"), .content(localized("meta-description"))),
            .meta(.name("keywords"), .content(localized("meta-keywords"))),
        ]
    }

    var body: Component {
        Div {
            Div {
                Div {
                    Image(url: "/assets/img/me.jpg", description: "me-image")
                        .class("me-image")
                }
                .class("me-image-wrapper")

                Div {
                    H1 {
                        localized("hero-name").parseLinks()
                    }

                    H2 {
                        localized("hero-title").parseLinks()
                    }
                }
                .class("me-wrapper")
            }
            .class("me-hero-wrapper")

            Div {
                Div {
                    Div {}
                        .class("social-item")
                        .class("ignored-social-item")
                }
                .class("social-item-wrapper")

                Div {
                    Link(url: "tel:+90 553 684 45 96") {
                        Node.i(.class("social-icon fa-solid fa-mobile"))

                        Paragraph {
                            Text("+90 553 684 45 96")
                        }
                        .class("social-text")

                        Node.i(.class("social-icon-arrow fa-solid fa-arrow-right"))
                    }
                    .class("social-item social-mailto")
                }
                .class("social-item-wrapper")

                Div {
                    Link(url: "mailto:tgcn@tugcanonbas.com?subject=Reaching%20Out%20From%20tugcanonbas.com%20👋🏻") {
                        Node.i(.class("social-icon fa-solid fa-envelope"))

                        Paragraph {
                            Text("tgcn@tugcanonbas.com")
                        }

                        Node.i(.class("social-icon-arrow fa-solid fa-arrow-right"))
                    }
                    .class("social-item social-telto")
                }
                .class("social-item-wrapper")

                Div {
                    Link(url: "/assets/Tuğcan-ÖNBAŞ_vCard.vcf") {
                        Node.i(.class("social-icon fa-solid fa-address-card"))

                        Paragraph {
                            Text(localized("save-to-contact"))
                        }
                        .class("social-text")

                        Node.i(.class("social-icon-arrow fa-solid fa-arrow-right"))
                    }
                    .class("social-item save-to-contact")
                }
                .class("social-item-wrapper")
            }
            .class("info-wrapper")
        }
        .class("socials-wrapper")
    }
}
