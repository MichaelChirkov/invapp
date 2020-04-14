//
// Orderbook.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Orderbook: Codable {

    public var figi: String
    public var depth: Int
    public var bids: [OrderResponse]
    public var asks: [OrderResponse]
    public var tradeStatus: TradeStatus
    /** Шаг цены */
    public var minPriceIncrement: Double
    /** Номинал для облигаций */
    public var faceValue: Double?
    public var lastPrice: Double?
    public var closePrice: Double?
    /** Верхняя граница цены */
    public var limitUp: Double?
    /** Нижняя граница цены */
    public var limitDown: Double?

    public init(figi: String, depth: Int, bids: [OrderResponse], asks: [OrderResponse], tradeStatus: TradeStatus, minPriceIncrement: Double, faceValue: Double?, lastPrice: Double?, closePrice: Double?, limitUp: Double?, limitDown: Double?) {
        self.figi = figi
        self.depth = depth
        self.bids = bids
        self.asks = asks
        self.tradeStatus = tradeStatus
        self.minPriceIncrement = minPriceIncrement
        self.faceValue = faceValue
        self.lastPrice = lastPrice
        self.closePrice = closePrice
        self.limitUp = limitUp
        self.limitDown = limitDown
    }


}
