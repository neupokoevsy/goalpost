//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 21/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var goalType: goalType = .shortTerm
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.bindToKeyboard()
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
        self.automaticallyAdjustsScrollViewInsets = false
        goalTextView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonWasPressed(_ sender: UIButton) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" && goalTextView.text != nil {
            guard let fininshGoalVC = storyboard?.instantiateViewController(identifier: "FinishGoalVC") as? FinishGoalVC else {
                return}
            fininshGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(fininshGoalVC)
        }
        
    }
    
    @IBAction func shortTermButtonWasPressed(_ sender: UIButton) {
        goalType = .shortTerm
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: UIButton) {
        goalType = .longTerm
        longTermButton.setSelectedColor()
        shortTermButton.setDeselectedColor()
    }
    
    @IBAction func backButtonWasPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
    
}
