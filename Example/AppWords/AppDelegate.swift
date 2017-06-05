//
//  AppDelegate.swift
//  AppWordsExample
//
//  Created by Itamar Weisbrod on 29.11.2016.
//  Copyright © 2016 AppWords. All rights reserved.
//

import UIKit
import AppWordsSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        AppWordsSDK.shared.initialize(apiToken: "", appId: "") { error in
            if error == nil {
                print("AppWordsSDK - initialized")
            } else {
                print("AppWordsSDK - init failed: \(error?.localizedDescription)")
            }
        }
    
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
    
        let message = "The app was opened with the URL: \(url)"
        let vc = UIAlertController(title: "", message: message, preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        window?.rootViewController?.present(vc, animated: true, completion: nil)
        print(message)
        
        return true
    }
}
