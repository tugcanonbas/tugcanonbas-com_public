//
//  PageController.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 20.05.2023.
//

import Vapor

struct PageController {
    let language: AvailableLanguages

    func home(req _: Request) async throws -> HomePage {
        HomePage(language: language)
    }

    func socials(req _: Request) async throws -> SocialsPage {
        SocialsPage(language: language)
    }
}
