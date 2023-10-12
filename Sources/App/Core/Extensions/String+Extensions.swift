//
//  String+Extensions.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 17.04.2023.
//

import Foundation
import Plot
import Vapor

extension String {
    func style() -> String {
        let path = getcwd(nil, Int(PATH_MAX))
        let configPath = String(cString: path!) + "/Resources/styles/\(self).css"

        do {
            let data = try String(contentsOfFile: configPath, encoding: .utf8)
            return data
        } catch {
            return ""
        }
    }

    func script() -> String {
        let path = getcwd(nil, Int(PATH_MAX))
        let configPath = String(cString: path!) + "/Resources/Scripts/\(self).js"

        do {
            let data = try String(contentsOfFile: configPath, encoding: .utf8)
            return data
        } catch {
            return ""
        }
    }

    func parseLinks(linkClass: String = "", linkTarget: HTMLAnchorTarget = .blank) -> Component {
        var components: [Component] = []

        let words = split(separator: " ")

        for word in words {
            if word.contains("__LINK__") {
                let link = String(word.replacingOccurrences(of: "__LINK__", with: ""))

                let delimiter = "__"

                let sections = link.components(separatedBy: delimiter)

                let url = sections[0]
                let text = sections[1].replacingOccurrences(of: "**", with: " ")

                components.append(
                    Link(url: url) {
                        Text(text)
                    }
                    .class(linkClass)
                    .linkTarget(linkTarget)
                )
                components.append(Text(" "))
            } else {
                components.append(Text(String(word) + " "))
            }
        }

        return Span {
            for component in components {
                component
            }
        }
    }

    func localizeString(_ string: String, _ language: AvailableLanguages) -> String {
        do {
            let data = string
            let jsonData = Data(data.utf8)
            let json = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any]

            if let json = json {
                if let string = json[self] as? [String: Any] {
                    if let localizedString = string[language.locale] as? String {
                        return localizedString
                    }
                }
            }
        } catch {
            return ""
        }

        return ""
    }
}
