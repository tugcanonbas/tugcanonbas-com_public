//
//  Background.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 17.05.2023.
//

import Plot

struct Background: Component {
    var body: Component {
        Div {
            Div {
                Div {}
                    .class("blue")
                Div {}
                    .class("green")
            }
            .class("circles")
            Div {}
                .class("filter")
        }
        .class("background")
    }
}
