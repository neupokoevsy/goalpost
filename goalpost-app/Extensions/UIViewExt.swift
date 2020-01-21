//
//  UIViewExt.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 21/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit

extension UIView {
    func bindToKeyboard() {
        NotificationCenter.default.addObserver(self, selector: #selector(keybaordWillChange(_:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func keybaordWillChange(_ notification: NSNotification) {
        let duration = notification.userInfo![UIResponder.keyboardAnimationDurationUserInfoKey] as! Double
        let curve = notification.userInfo![UIResponder.keyboardAnimationCurveUserInfoKey] as! UInt
        let startingFrame = (notification.userInfo![UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let endingFrame = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let deltaY = endingFrame.origin.y - startingFrame.origin.y
        
        UIView.animateKeyframes(withDuration: duration, delay: 0.0, options: UIView.KeyframeAnimationOptions(rawValue: curve), animations: {
            self.frame.origin.y += deltaY
        }, completion: nil)
    }
}
