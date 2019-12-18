//
//  UIViewExtension.swift
//  FoodHouse
//
//  Created by Nikandr on 12/17/19.
//  Copyright © 2019 Nikandr. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setBorder(width: CGFloat, color: UIColor) {
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
    
    func createCircle() {
       layer.cornerRadius = layer.bounds.width/2
    }
}
