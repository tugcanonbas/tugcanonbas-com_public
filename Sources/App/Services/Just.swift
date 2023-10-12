//
//  URLSession+Extension.swift
//  tugcanonbas-com-vapor
//
//  Created by Tuğcan ÖNBAŞ on 29.05.2023.
//

#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif
import Foundation

struct Just {
    static func get(urlrequest: URLRequest) -> (data: Data?, response: URLResponse?, error: Error?) {
        var data: Data?
        var response: URLResponse?
        var error: Error?

        let semaphore = DispatchSemaphore(value: 0)

        let dataTask = URLSession.shared.dataTask(with: urlrequest) {
            data = $0
            response = $1
            error = $2

            semaphore.signal()
        }

        dataTask.resume()

        _ = semaphore.wait(timeout: .distantFuture)

        return (data, response, error)
    }
}
