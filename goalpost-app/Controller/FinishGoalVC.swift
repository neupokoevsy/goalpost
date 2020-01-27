//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 27/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit
import CoreData

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
        if pointsTextField.text != nil {
           self.save{ (complete) in
               if complete {
                dismiss(animated: true, completion: nil)
               }
           }
        }
    }
    
    @IBAction func backButtonWasPressed(_ sender: UIButton) {
        dismissDetail()
    }
    
    
    //-----------------------------------------
    //MARK: Pass Data into Core data goal model
    //-----------------------------------------
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            completion(true)
            print("Successfully saved.")
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
    
}
