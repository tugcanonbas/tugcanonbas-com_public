//
//  AvailableLanguages.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 21.05.2023.
//

import Vapor

enum AvailableLanguages: String, CaseIterable {
    case en
    case tr
    case de

    var path: PathComponent {
        switch self {
        case .en:
            return ""
        case .tr:
            return "tr"
        case .de:
            return "de"
        }
    }

    var locale: String {
        switch self {
        case .en:
            return "en"
        case .tr:
            return "tr"
        case .de:
            return "de"
        }
    }
}
