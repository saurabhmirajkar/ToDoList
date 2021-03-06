//
//  TDGradient.swift
//  GetItDone
//
//  Created by Saurabh Mirajkar on 18/05/20.
//  Copyright © 2020 Saurabh Mirajkar. All rights reserved.
//

import UIKit

class TDGradient: UIView {
    
//    let colors : [CGColor] = [
//        UIColor(red: 100, green: 228, blue: 255).cgColor,
//        UIColor(red: 58, green: 123, blue: 213).cgColor
//    ]
    
    let hexColors : [CGColor] = [
        UIColor.blueZero.cgColor,  // #64E4FF
        UIColor.blueOne.cgColor   // #3A7BD5
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        if frame == .zero {
            translatesAutoresizingMaskIntoConstraints = false
        }
        
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.hexColors
            layer.locations = [0.0, 1.2]
        }
        
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
