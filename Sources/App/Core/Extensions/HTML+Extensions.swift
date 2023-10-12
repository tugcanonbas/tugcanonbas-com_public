//
//  HTML+Extensions.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 16.04.2023.
//

import Plot
import Vapor

extension HTML: AsyncResponseEncodable {
    public func encodeResponse(for _: Request) async throws -> Response {
        let response = Response()
        response.body = .init(string: render())
        response.headers.contentType = .html
        return response
    }
}
