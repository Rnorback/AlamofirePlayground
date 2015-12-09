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
        
//        let today = NSCalendar.currentCalendar().startOfDayForDate(NSDate())
//        let dateFormatter = NSDateFormatter()
//        dateFormatter.dateFormat = "yyyy-MM-dd"
//        let thisDate = dateFormatter.stringFromDate(today)
//        
//        let params = [
//            "access_token": "CAAF4UEqqlD8BAGw9opTkLGuyLxsOylT5eNlLDaafszZByva9lXZANFNcWEdehJwZANH8idBknKQ9hxMyVfGNY2FSI7WqD1AzRnPzsLAafSU5t6VIdFCdWjmdOAcsNF2ZANbiTW414ZCZCfxIlCIZA3u6olcjEmM4VJcUjTTPCZCltbaZBrApouc6yJDjUIy09988ZD",
//            "fields":"spend,unique_clicks,cost_per_unique_click",
//            "breakdowns":"impression_device,placement",
//            "time_range":"{'since':'2015-10-25','until':'\(thisDate)'}"
//        ]//,"time_increment":"1"]
        //let urlString = "https://graph.facebook.com/v2.5/act_105821126431030/insights"//Account level: returns insights about account
        //let urlString = "https://graph.facebook.com/v2.5/act_105821126431030/insights"//Account level: get devices info "fields":"spend,unique_clicks,cost_per_unique_click","breakdowns":"impression_device,placement",
        //  "breakdowns":"region"
        //let urlString = "https://graph.facebook.com/v2.5/act_105821126431030/campaigns" //Account level: returns campaigns
        //let urlString = "https://graph.facebook.com/v2.5/6027228070972" //Campaign ID: returns campaign information - name,id,objective
        //let urlString = "https://graph.facebook.com/v2.5/6027228070972/insights" //Campaign ID: get devices info for campaigns "fields":"spend,unique_clicks,cost_per_unique_click","breakdowns":"impression_device,placement",
        //  "breakdowns":"region"
        //let urlString = "https://graph.facebook.com/v2.5/6027228070972/adsets" //Campaign ID, get's adsets
        //let urlString = "https://graph.facebook.com/v2.5/6027228072172" //Adset ID get
        //let urlString = "https://graph.facebook.com/v2.5/6027228072172/insights" //Adset ID: get devices info for adsets  "fields":"spend,unique_clicks,cost_per_unique_click","breakdowns":"impression_device,placement",
        //  "breakdowns":"region"

//        Alamofire.request(.GET, urlString, parameters: params)
//            .validate()
//            .responseJSON { (request, response, result) in
//                switch result {
//                case .Success(let responseObject):
//                    let json = JSON(responseObject)
//                    print(json)
//                case .Failure(let data, let error as NSError):
//                    print("URL request didn't work \(error.localizedDescription)")
//                default:
//                    break
//                }
//        }
        
        let params:[String : AnyObject] = [:]
        let headers = [
            "Authorization": "Bearer ya29.QwKjT4PTVXYNuic6sCepz0IMbAkMQU6VK4pRYkrPNUggiE3vkSLeNN7IIYUGfVVRFvit51c"]
        let urlString = "https://adwords.google.com/api/adwords/cm/v201509/CampaignService"
        
        Alamofire.request(.GET, urlString, parameters: params, headers: headers)
            .validate()
            .responseJSON { (request, response, result) in
                switch result {
                case .Success(let responseObject):
                    print(responseObject)
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

