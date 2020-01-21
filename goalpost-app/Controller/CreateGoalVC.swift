//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 21/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonWasPressed(_ sender: UIButton) {
    }
    
    @IBAction func shortTermButtonWasPressed(_ sender: UIButton) {
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: UIButton) {
    }
    
    @IBAction func backButtonWasPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
