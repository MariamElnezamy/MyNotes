//
//  MyCustomShadow.swift
//  MODERN CUACULATOR
//
//  Created by Admin on 6/2/18.
//  Copyright © 2018 mariamelnezamy. All rights reserved.
//

import UIKit

class MyCustomShadowBtn: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.layer.shadowColor = UIColor.black.withAlphaComponent(1).cgColor
        self.layer.shadowRadius = 5
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.layer.cornerRadius = 6

    }
}
