//
// MarketInstrument.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MarketInstrument: Codable {

    public var figi: String
    public var ticker: String
    public var isin: String?
    /** Шаг цены */
    public var minPriceIncrement: Double?
    public var lot: Int
    public var currency: Currency?
    public var name: String
    public var type: InstrumentType

    public init(figi: String, ticker: String, isin: String?, minPriceIncrement: Double?, lot: Int, currency: Currency?, name: String, type: InstrumentType) {
        self.figi = figi
        self.ticker = ticker
        self.isin = isin
        self.minPriceIncrement = minPriceIncrement
        self.lot = lot
        self.currency = currency
        self.name = name
        self.type = type
    }


}

