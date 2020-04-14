//
// OperationsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class OperationsAPI {
    /**
     Получение списка операций

     - parameter from: (query) Начало временного промежутка 
     - parameter to: (query) Конец временного промежутка 
     - parameter figi: (query) Figi инструмента для фильтрации (optional)
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func operationsGet(from: Date, to: Date, figi: String? = nil, brokerAccountId: String? = nil, completion: @escaping ((_ data: OperationsResponse?,_ error: Error?) -> Void)) {
        operationsGetWithRequestBuilder(from: from, to: to, figi: figi, brokerAccountId: brokerAccountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Получение списка операций
     - GET /operations
     - 

     - :
       - type: http
       - name: sso_auth
     - examples: [{contentType=application/json, example={
  "payload" : {
    "operations" : [ {
      "date" : "2019-08-19T18:38:33.131642+03:00",
      "instrumentType" : "Stock",
      "quantity" : 5,
      "trades" : [ {
        "date" : "2019-08-19T18:38:33.131642+03:00",
        "quantity" : 6,
        "price" : 0.8008281904610115,
        "tradeId" : "tradeId"
      }, {
        "date" : "2019-08-19T18:38:33.131642+03:00",
        "quantity" : 6,
        "price" : 0.8008281904610115,
        "tradeId" : "tradeId"
      } ],
      "figi" : "figi",
      "price" : 5.962133916683182,
      "isMarginCall" : true,
      "commission" : {
        "currency" : "RUB",
        "value" : 1.4658129805029452
      },
      "currency" : "RUB",
      "payment" : 1.4658129805029452,
      "operationType" : "Buy",
      "id" : "id",
      "status" : "Done"
    }, {
      "date" : "2019-08-19T18:38:33.131642+03:00",
      "instrumentType" : "Stock",
      "quantity" : 5,
      "trades" : [ {
        "date" : "2019-08-19T18:38:33.131642+03:00",
        "quantity" : 6,
        "price" : 0.8008281904610115,
        "tradeId" : "tradeId"
      }, {
        "date" : "2019-08-19T18:38:33.131642+03:00",
        "quantity" : 6,
        "price" : 0.8008281904610115,
        "tradeId" : "tradeId"
      } ],
      "figi" : "figi",
      "price" : 5.962133916683182,
      "isMarginCall" : true,
      "commission" : {
        "currency" : "RUB",
        "value" : 1.4658129805029452
      },
      "currency" : "RUB",
      "payment" : 1.4658129805029452,
      "operationType" : "Buy",
      "id" : "id",
      "status" : "Done"
    } ]
  },
  "trackingId" : "trackingId",
  "status" : "Ok"
}}]
     - parameter from: (query) Начало временного промежутка 
     - parameter to: (query) Конец временного промежутка 
     - parameter figi: (query) Figi инструмента для фильтрации (optional)
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)

     - returns: RequestBuilder<OperationsResponse> 
     */
    open class func operationsGetWithRequestBuilder(from: Date, to: Date, figi: String? = nil, brokerAccountId: String? = nil) -> RequestBuilder<OperationsResponse> {
        let path = "operations"
        let URLString = SwaggerClientAPI.basePath + path
        let token = "***"
        let headers = ["Authorization": "Bearer \(token)"]
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "from": from.encodeToJSON(), 
                        "to": to.encodeToJSON(), 
                        "figi": figi, 
                        "brokerAccountId": brokerAccountId
        ])

        let requestBuilder: RequestBuilder<OperationsResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headers)
    }

}