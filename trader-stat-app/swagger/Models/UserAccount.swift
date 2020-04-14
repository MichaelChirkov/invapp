//
// UserAccount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UserAccount: Codable {

    public var brokerAccountType: BrokerAccountType
    public var brokerAccountId: String

    public init(brokerAccountType: BrokerAccountType, brokerAccountId: String) {
        self.brokerAccountType = brokerAccountType
        self.brokerAccountId = brokerAccountId
    }


}

