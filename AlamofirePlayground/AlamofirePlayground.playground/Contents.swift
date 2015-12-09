//: Playground - noun: a place where people can play

import UIKit
import Alamofire
import SwiftyJSON

var str = "Hello, playground"

let today = NSCalendar.currentCalendar().startOfDayForDate(NSDate())
let dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd"
let thisDate = dateFormatter.stringFromDate(today)

let params = [
    "access_token": "CAAF4UEqqlD8BAGw9opTkLGuyLxsOylT5eNlLDaafszZByva9lXZANFNcWEdehJwZANH8idBknKQ9hxMyVfGNY2FSI7WqD1AzRnPzsLAafSU5t6VIdFCdWjmdOAcsNF2ZANbiTW414ZCZCfxIlCIZA3u6olcjEmM4VJcUjTTPCZCltbaZBrApouc6yJDjUIy09988ZD",
    "fields":"unique_clicks",
    "breakdowns":"['impression_device']",
    "time_range":"{'since':'2015-10-25','until':'\(thisDate)'}"
]//,"time_increment":"1"]
let urlString = "https://graph.facebook.com/v2.5/act_105821126431030/insights"

Alamofire.request(.GET, urlString, parameters: params)
    .validate()
    .responseJSON { (request, response, result) in
        switch result {
        case .Success(let responseObject):
            let json = JSON(responseObject)
            print(json)
        case .Failure(let data, let error as NSError):
            print("URL request didn't work \(error.localizedDescription)")
        default:
            break
        }
}
    
