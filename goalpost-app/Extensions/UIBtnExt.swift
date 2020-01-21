//
//  UIBtnExt.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 21/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor () {
        self.backgroundColor = #colorLiteral(red: 0.2181883454, green: 0.821990788, blue: 0.4751295447, alpha: 1)
    }
    
    func setDeselectedColor () {
        self.backgroundColor = #colorLiteral(red: 0.7464011312, green: 0.8857318759, blue: 0.7402122021, alpha: 1)
    }
}
