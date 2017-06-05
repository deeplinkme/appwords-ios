//
//  ViewController.swift
//  AppWordsExample
//
//  Created by Itamar Weisbrod on 29.11.2016.
//  Copyright © 2016 AppWords. All rights reserved.
//

import UIKit
import AppWordsSDK

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        AppWordsSDK.shared.presentCreateIntentViewController(inViewController: self)
    }
}
