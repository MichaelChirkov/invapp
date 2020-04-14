//
// OrdersAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class OrdersAPI {
    /**
     Отмена заявки

     - parameter orderId: (query) ID заявки 
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func ordersCancelPost(orderId: String, brokerAccountId: String? = nil, completion: @escaping ((_ data: Empty?,_ error: Error?) -> Void)) {
        ordersCancelPostWithRequestBuilder(orderId: orderId, brokerAccountId: brokerAccountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Отмена заявки
     - POST /orders/cancel
     - 

     - :
       - type: http
       - name: sso_auth
     - examples: [{contentType=application/json, example={
  "payload" : { },
  "trackingId" : "trackingId",
  "status" : "Ok"
}}]
     - parameter orderId: (query) ID заявки 
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)

     - returns: RequestBuilder<Empty> 
     */
    open class func ordersCancelPostWithRequestBuilder(orderId: String, brokerAccountId: String? = nil) -> RequestBuilder<Empty> {
        let path = "/orders/cancel"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "orderId": orderId, 
                        "brokerAccountId": brokerAccountId
        ])

        let requestBuilder: RequestBuilder<Empty>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Получение списка активных заявок

     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func ordersGet(brokerAccountId: String? = nil, completion: @escaping ((_ data: OrdersResponse?,_ error: Error?) -> Void)) {
        ordersGetWithRequestBuilder(brokerAccountId: brokerAccountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Получение списка активных заявок
     - GET /orders
     - 

     - :
       - type: http
       - name: sso_auth
     - examples: [{contentType=application/json, example={
  "payload" : [ {
    "executedLots" : 6,
    "orderId" : "orderId",
    "price" : 1.4658129805029452,
    "figi" : "figi",
    "requestedLots" : 0,
    "type" : "Limit",
    "operation" : "Buy",
    "status" : "New"
  }, {
    "executedLots" : 6,
    "orderId" : "orderId",
    "price" : 1.4658129805029452,
    "figi" : "figi",
    "requestedLots" : 0,
    "type" : "Limit",
    "operation" : "Buy",
    "status" : "New"
  } ],
  "trackingId" : "trackingId",
  "status" : "Ok"
}}]
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)

     - returns: RequestBuilder<OrdersResponse> 
     */
    open class func ordersGetWithRequestBuilder(brokerAccountId: String? = nil) -> RequestBuilder<OrdersResponse> {
        let path = "/orders"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "brokerAccountId": brokerAccountId
        ])

        let requestBuilder: RequestBuilder<OrdersResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Создание лимитной заявки

     - parameter body: (body)  
     - parameter figi: (query) FIGI инструмента 
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func ordersLimitOrderPost(body: LimitOrderRequest, figi: String, brokerAccountId: String? = nil, completion: @escaping ((_ data: LimitOrderResponse?,_ error: Error?) -> Void)) {
        ordersLimitOrderPostWithRequestBuilder(body: body, figi: figi, brokerAccountId: brokerAccountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Создание лимитной заявки
     - POST /orders/limit-order
     - 

     - :
       - type: http
       - name: sso_auth
     - examples: [{contentType=application/json, example={
  "payload" : {
    "rejectReason" : "rejectReason",
    "executedLots" : 6,
    "orderId" : "orderId",
    "commission" : {
      "currency" : "RUB",
      "value" : 1.4658129805029452
    },
    "requestedLots" : 0,
    "message" : "message",
    "operation" : "Buy",
    "status" : "New"
  },
  "trackingId" : "trackingId",
  "status" : "Ok"
}}]
     - parameter body: (body)  
     - parameter figi: (query) FIGI инструмента 
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)

     - returns: RequestBuilder<LimitOrderResponse> 
     */
    open class func ordersLimitOrderPostWithRequestBuilder(body: LimitOrderRequest, figi: String, brokerAccountId: String? = nil) -> RequestBuilder<LimitOrderResponse> {
        let path = "/orders/limit-order"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "figi": figi, 
                        "brokerAccountId": brokerAccountId
        ])

        let requestBuilder: RequestBuilder<LimitOrderResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**
     Создание рыночной заявки

     - parameter body: (body)  
     - parameter figi: (query) FIGI инструмента 
     - parameter brokerAccountId: (query) Уникальный идентификатор счета (по умолчанию - Тинькофф) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func ordersMarketOrderPost(body: MarketOrderRequest, figi: String, brokerAccountId: String? = nil, completion: @escaping ((_ data: MarketOrderResponse?,_ error: Error?) -> Void)) {
        ordersMarketOrderPostWithRequestBuilder(body: body, figi: figi, brokerAccountId: brokerAccountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Создание рыночной заявки
     - POST /orders/market-order
     - 

     - :
       - type: http
       - name: sso_auth
     - examples: [{contentType=application/json, example={
  "payload" : {
    "rejectReason" : "rejectReason",
    "executedLots" : 6,
    "orderId" : "orderId",
    "commission" : {
      "currency" : "RUB",
      "value" : 1.4658129805029452
    },
    "requestedLots" : 0,
    "message" : "message",
    "operation" : "Buy",
    "status" : "New"
  },
  "trackingId" : "trackingId",
  "status" : "Ok"
}}]
     - parameter body: (body)  
     - parameter figi: (query) FIGI инструмента 
     - parameter brokerAccountId: (query) Уникальный идентификатор счета (по умолчанию - Тинькофф) (optional)

     - returns: RequestBuilder<MarketOrderResponse> 
     */
    open class func ordersMarketOrderPostWithRequestBuilder(body: MarketOrderRequest, figi: String, brokerAccountId: String? = nil) -> RequestBuilder<MarketOrderResponse> {
        let path = "/orders/market-order"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "figi": figi, 
                        "brokerAccountId": brokerAccountId
        ])

        let requestBuilder: RequestBuilder<MarketOrderResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

}