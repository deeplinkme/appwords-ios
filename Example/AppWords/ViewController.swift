//
//  ViewController.swift
//  AppWordsExample
//
//  Created by Itamar Weisbrod on 29.11.2016.
//  Copyright © 2016 Cellogic Ltd. All rights reserved.
//

import UIKit
import AppWordsSDK

class ViewController: UIViewController {
    
    @IBOutlet weak var appWordsButton: UIButton!
    
    var createdIntent: Intent?
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func sendScreenshotButtonTapped(_ button: UIButton) {
        
        button.isEnabled = false
        button.setTitle("Please wait...", for: .normal)
        
        AppWordsSDK.shared.createIntent(type: "tickets", view: self.view, viewName: "Bought Movie Ticket", location: "New York City Upper West Side", keywords: ["Captain America"]) { error, intent in
        
            self.createdIntent = intent
            
            if let links = intent?.topDeepLinks, links.count > 0 {
                self.appWordsButton.isHidden = false
                button.setTitle("There are some links", for: .normal)
            } else {
                self.appWordsButton.isHidden = true
                button.setTitle("There are no links available", for: .normal)
            }
        }
    }
    
    @IBAction func appWordsButtonTapped() {
        
        if let intent = createdIntent {
            AppWordsSDK.shared.presentAppWordsViewController(intent: intent, inViewController: self)
        }
    }
}
