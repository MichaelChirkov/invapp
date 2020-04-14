//
// OperationsResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct OperationsResponse: Codable {

    public var trackingId: String
    public var status: String
    public var payload: Operations

    public init(trackingId: String, status: String, payload: Operations) {
        self.trackingId = trackingId
        self.status = status
        self.payload = payload
    }


}

