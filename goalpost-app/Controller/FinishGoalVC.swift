//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 27/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit

class FinishGoalVC: UIViewController {

    @IBOutlet weak var createGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: goalType!
    
    func initData(description: String, type: goalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
    }
    
    

    @IBAction func createGoalButtonWasPressed(_ sender: UIButton) {
        
        //-----------------------------------------
        //MARK: Pass Data into Core data goal model
        //-----------------------------------------
        
    }
    

}
