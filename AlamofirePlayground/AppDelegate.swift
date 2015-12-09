//
//  AppDelegate.swift
//  AlamofirePlayground
//
//  Created by Rob Norback on 12/9/15.
//  Copyright © 2015 Norback Solutions, LLC. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let today = NSCalendar.currentCalendar().startOfDayForDate(NSDate())
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let thisDate = dateFormatter.stringFromDate(today)
        
        let params = [
            "access_token": "CAAF4UEqqlD8BAGw9opTkLGuyLxsOylT5eNlLDaafszZByva9lXZANFNcWEdehJwZANH8idBknKQ9hxMyVfGNY2FSI7WqD1AzRnPzsLAafSU5t6VIdFCdWjmdOAcsNF2ZANbiTW414ZCZCfxIlCIZA3u6olcjEmM4VJcUjTTPCZCltbaZBrApouc6yJDjUIy09988ZD",
            "fields":"unique_clicks",
            //"breakdowns":"['impression_device']",
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
        
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

