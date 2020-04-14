//
// PortfolioAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class PortfolioAPI {
    /**
     Получение валютных активов клиента

     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func portfolioCurrenciesGet(brokerAccountId: String? = nil, completion: @escaping ((_ data: PortfolioCurrenciesResponse?,_ error: Error?) -> Void)) {
        portfolioCurrenciesGetWithRequestBuilder(brokerAccountId: brokerAccountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Получение валютных активов клиента
     - GET /portfolio/currencies
     - 

     - :
       - type: http
       - name: sso_auth
     - examples: [{contentType=application/json, example={
  "payload" : {
    "currencies" : [ {
      "balance" : 0.8008281904610115,
      "blocked" : 6.027456183070403,
      "currency" : "RUB"
    }, {
      "balance" : 0.8008281904610115,
      "blocked" : 6.027456183070403,
      "currency" : "RUB"
    } ]
  },
  "trackingId" : "trackingId",
  "status" : "Ok"
}}]
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)

     - returns: RequestBuilder<PortfolioCurrenciesResponse> 
     */
    open class func portfolioCurrenciesGetWithRequestBuilder(brokerAccountId: String? = nil) -> RequestBuilder<PortfolioCurrenciesResponse> {
        let path = "/portfolio/currencies"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "brokerAccountId": brokerAccountId
        ])

        let requestBuilder: RequestBuilder<PortfolioCurrenciesResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Получение портфеля клиента

     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func portfolioGet(brokerAccountId: String? = nil, completion: @escaping ((_ data: PortfolioResponse?,_ error: Error?) -> Void)) {
        portfolioGetWithRequestBuilder(brokerAccountId: brokerAccountId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Получение портфеля клиента
     - GET /portfolio
     - 

     - :
       - type: http
       - name: sso_auth
     - examples: [{contentType=application/json, example={
  "payload" : {
    "positions" : [ {
      "lots" : 1,
      "ticker" : "ticker",
      "instrumentType" : "Stock",
      "balance" : 0.8008281904610115,
      "blocked" : 6.027456183070403,
      "name" : "name",
      "figi" : "figi",
      "expectedYield" : {
        "currency" : "RUB",
        "value" : 1.4658129805029452
      },
      "isin" : "isin"
    }, {
      "lots" : 1,
      "ticker" : "ticker",
      "instrumentType" : "Stock",
      "balance" : 0.8008281904610115,
      "blocked" : 6.027456183070403,
      "name" : "name",
      "figi" : "figi",
      "expectedYield" : {
        "currency" : "RUB",
        "value" : 1.4658129805029452
      },
      "isin" : "isin"
    } ]
  },
  "trackingId" : "trackingId",
  "status" : "Ok"
}}]
     - parameter brokerAccountId: (query) Номер счета (по умолчанию - Тинькофф) (optional)

     - returns: RequestBuilder<PortfolioResponse> 
     */
    open class func portfolioGetWithRequestBuilder(brokerAccountId: String? = nil) -> RequestBuilder<PortfolioResponse> {
        let path = "/portfolio"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "brokerAccountId": brokerAccountId
        ])

        let requestBuilder: RequestBuilder<PortfolioResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
