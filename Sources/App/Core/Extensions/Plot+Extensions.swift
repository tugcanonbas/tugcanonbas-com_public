//
//  Plot+Extensions.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 20.04.2023.
//

import Plot

extension Node where Context: HTML.BodyContext {
    static func script(_ script: String, isAsync: Bool = false) -> Node {
        let node = Node.script(
            .raw(script.script()),
            .attribute(named: "type", value: "text/javascript"),
            .attribute(named: "charset", value: "utf-8"),
            .if(isAsync, .async())
        )
        return node
    }
}

extension Node where Context == HTML.HeadContext {
    static func globalStyle(_ style: String) -> Node {
        .element(named: "style", nodes: [
            .text(style.style()),
        ])
    }
}

public extension Node where Context: HTMLScriptableContext {
    static func script(_ script: String, isAsync: Bool = false) -> Node {
        let node = Node.script(
            .raw(script.script()),
            .attribute(named: "type", value: "text/javascript"),
            .attribute(named: "charset", value: "utf-8"),
            .if(isAsync, .async())
        )
        return node
    }
}
