//
//  Layoutable.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 21.05.2023.
//

import Plot

protocol Layoutable {
    func render(page: Page) -> HTML
}
