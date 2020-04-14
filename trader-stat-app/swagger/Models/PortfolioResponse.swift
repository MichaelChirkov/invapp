//
// PortfolioResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PortfolioResponse: Codable {

    public var trackingId: String
    public var status: String
    public var payload: Portfolio

    public init(trackingId: String, status: String, payload: Portfolio) {
        self.trackingId = trackingId
        self.status = status
        self.payload = payload
    }


}
