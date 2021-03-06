//
// SandboxSetCurrencyBalanceRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct SandboxSetCurrencyBalanceRequest: Codable {

    public var currency: SandboxCurrency
    public var balance: Double

    public init(currency: SandboxCurrency, balance: Double) {
        self.currency = currency
        self.balance = balance
    }


}

