//
//  LocalizationService.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 29.05.2023.
//

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif
import Foundation
import Vapor

struct LocalizationService {
    let page: String
    let language: AvailableLanguages

    var localizedString: String = ""

    func getPage() -> String {
        guard let url = URL(string: Constant.Web.resourceLink) else {
            return ""
        }

        let newURL = url.appendingPathComponent("Localizations/\(page).json")

        var request = URLRequest(url: newURL)
        request.httpMethod = "GET"
        request.addValue("application/vnd.github.v3.raw", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(Constant.Web.resourceToken)", forHTTPHeaderField: "Authorization")

        let (data, _, _) = Just.get(urlrequest: request)

        let string = String(data: data!, encoding: .utf8)

        return string ?? ""
    }
}
