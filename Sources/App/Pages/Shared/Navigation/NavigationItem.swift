//
//  NavigationItem.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 17.04.2023.
//

import Vapor

enum NavigationItem: String {
    case index
    case home
    case socials
    case notFound

    var url: String {
        switch self {
        case .home:
            return "/"
        default:
            return "/\(route)"
        }
    }

    var route: PathComponent {
        switch self {
        case .index:
            return "/"
        case .home:
            return "/"
        case .socials:
            return "socials"
        case .notFound:
            return "404"
        }
    }
}
