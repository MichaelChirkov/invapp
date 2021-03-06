//
// Operation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Operation: Codable {

    public var _id: String
    public var status: OperationStatus
    public var trades: [OperationTrade]?
    public var commission: MoneyAmount?
    public var currency: Currency
    public var payment: Double
    public var price: Double?
    public var quantity: Int?
    public var figi: String?
    public var instrumentType: InstrumentType?
    public var isMarginCall: Bool
    /** ISO8601 */
    public var date: Date
    public var operationType: OperationTypeWithCommission?

    public init(_id: String, status: OperationStatus, trades: [OperationTrade]?, commission: MoneyAmount?, currency: Currency, payment: Double, price: Double?, quantity: Int?, figi: String?, instrumentType: InstrumentType?, isMarginCall: Bool, date: Date, operationType: OperationTypeWithCommission?) {
        self._id = _id
        self.status = status
        self.trades = trades
        self.commission = commission
        self.currency = currency
        self.payment = payment
        self.price = price
        self.quantity = quantity
        self.figi = figi
        self.instrumentType = instrumentType
        self.isMarginCall = isMarginCall
        self.date = date
        self.operationType = operationType
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case status
        case trades
        case commission
        case currency
        case payment
        case price
        case quantity
        case figi
        case instrumentType
        case isMarginCall
        case date
        case operationType
    }

}

