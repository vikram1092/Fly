//
//  Arc.swift
//  Flakey
//
//  Created by Vikram Ramkumar on 8/4/16.
//  Copyright © 2016 Vikram Ramkumar. All rights reserved.
//

import Foundation
import UIKit


class Arc: UIView {
    
    
    let arcLayer = CAShapeLayer()
    let cloudColor = Constants.secondaryColor
    
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        initializeLayers()
    }
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        initializeLayers()
    }
    
    
    internal func initializeLayers() {
    
        //Make arc layer
        arcLayer.path = UIBezierPath(ovalIn: self.bounds).cgPath
        arcLayer.fillColor = UIColor.clear.cgColor
        arcLayer.strokeColor = cloudColor.cgColor
        arcLayer.strokeStart = 0.0
        arcLayer.strokeEnd = 0.5
        arcLayer.lineWidth = 3
        arcLayer.lineCap = kCALineCapRound
        
        self.layer.addSublayer(arcLayer)
    }
    
}
