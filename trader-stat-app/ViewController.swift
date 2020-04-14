//
//  ViewController.swift
//  trader-stat-app
//
//  Created by user on 12.04.2020.
//

import UIKit

class ViewController: UIViewController {

    let baseUrl = "https://api-invest.tinkoff.ru/openapi"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

//        let iso8601DateFormatter = ISO8601DateFormatter()
//        iso8601DateFormatter.formatOptions = [.withInternetDateTime, .withTimeZone, .withFractionalSeconds]
//   //   withFractionalSeconds
//        //.withInternetDateTime
//        if let date = getDate(day: 25, month: 2, year: 2001) {
//            print(iso8601DateFormatter.string(from: date))
//        }
        
        super.viewDidLoad()
    }

    @IBAction func getOperationsUIButton(_ sender: UIButton) {
     //   let path = "/operations"

        
       // let from = "2020-04-09T16:00:00.000Z"
        let dateFrom = getDate(day: 9, month: 4, year: 2020, hour: 0, minute: 0)
        let dateTo = getDate(day: 9, month: 4, year: 2020, hour: 23, minute: 59)
        let brokerAccountId = "2005143413"
        
//        let queryItems = [URLQueryItem(name: "from", value: from),
//                          URLQueryItem(name: "to", value: to),
//                          URLQueryItem(name: "brokerAccountId", value: brokerAccountId)]
//
//        guard let urlComps = NSURLComponents(string: baseUrl + path) else { return }
//
//        urlComps.queryItems = queryItems
//
//        guard let url = urlComps.url else { return }
//
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.setValue("Bearer \(token)", forHTTPHeaderField:"Authorization")
//        request.timeoutInterval = 60.0
//
//        let session = URLSession.shared
//
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//
//            guard let data = data else { return }
//            print(data)
//
//            do {
//                let json = try JSONSerialization.jsonObject(with: data, options: [])
//                print(json)
//            } catch {
//                print(error)
//            }
//        }.resume()
        
        OperationsAPI.operationsGet(from: dateFrom, to: dateTo, figi: nil, brokerAccountId: brokerAccountId) { (response, err) in
            
            if (err != nil) {
                print(err?.localizedDescription)
                return
            }
            
            do {
            guard let reps = response else { return }
                
            print(reps.payload.operations)
            } catch let error {
                print(error)
            }
        }
    }
    
    
    func getDate(day: Int, month: Int, year: Int, hour: Int, minute: Int) -> Date {
        var dateComponents = DateComponents()
        dateComponents.year = year
        dateComponents.month = month
        dateComponents.day = day
        dateComponents.timeZone = TimeZone.current
        dateComponents.hour = hour
        dateComponents.minute = minute

        let userCalendar = Calendar.current
        
        return userCalendar.date(from: dateComponents)!
    }
}

