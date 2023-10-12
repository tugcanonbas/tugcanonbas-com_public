//
//  ServerConfiguration.swift
//  re-viewed-backend
//
//  Created by Tuğcan ÖNBAŞ on 02.04.2023.
//

import Vapor

public struct ServerConfiguration {
    let app: Application

    public init(app: Application) {
        self.app = app
    }

    public func configure() throws {
        status()
        settings()
        try routes()
    }

    private func status() {
        switch app.environment {
        case .development:
            app.console.info("🚀 Server is running in development mode.")
        case .production:
            app.console.info("🚀 Server is running in production mode.")
        default:
            app.console.info("🚀 Server is running in \(app.environment) mode.")
        }
    }

    private func settings() {
        app.console.info("Confiuring settings...")

        app.http.server.configuration.hostname = Constant.Web.hostname
        app.http.server.configuration.port = Constant.Web.port

        app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    }

    private func routes() throws {
        app.console.info("Configuring routes...")

        app.routes.defaultMaxBodySize = "10mb"

        try app.register(collection: WebRouter())
    }
}
