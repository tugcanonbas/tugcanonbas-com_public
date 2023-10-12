//
//  Constant.swift
//  re-viewed-backend
//
//  Created by Tuğcan ÖNBAŞ on 02.04.2023.
//

import Foundation
import Vapor

enum Constant {
    enum Web {
        static let hostname: String = Environment.get("WEB_HOST") ?? "localhost"
        static let port: Int = Environment.get("WEB_PORT").flatMap(Int.init) ?? 8080

        // resourceLink is the link of the repository that contains the json files to localize the website.
        static let resourceLink: String = Environment.get("WEB_RESOURCE_LINK") ?? "https://github.com/tugcanonbas"

        // resourceToken is the token of the repository that contains the json files to localize the website.
        static let resourceToken: String = Environment.get("WEB_RESOURCE_TOKEN") ?? ""
    }
}
