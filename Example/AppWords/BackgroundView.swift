//
//  BackgroundView.swift
//  AppWordsExample
//
//  Created by Itamar Weisbrod on 05.06.2017.
//  Copyright © 2016 AppWords. All rights reserved.
//

import UIKit

class BackgroundView: UIView {
    
    private var gLayer: CAGradientLayer!
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        gLayer = CAGradientLayer()
        gLayer.frame = bounds
        gLayer.colors = [UIColor(red: 75.0/255.0, green: 170.0/255.0, blue: 211.0/255.0, alpha: 0.9).cgColor,
                         UIColor(red: 234.0/255.0, green: 236.0/255.0, blue: 198.0/255.0, alpha: 1.0).cgColor]
        gLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        layer.addSublayer(gLayer)
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        gLayer.frame = bounds
    }
}
