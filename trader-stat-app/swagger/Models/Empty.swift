//
// Empty.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Empty: Codable {

    public var trackingId: String
    public var payload: JSONValue
    public var status: String

    public init(trackingId: String, payload: JSONValue, status: String) {
        self.trackingId = trackingId
        self.payload = payload
        self.status = status
    }


}

