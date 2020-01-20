//
//  GoalsVC.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 19/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit

class GoalsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func addGoalButtonWasPressed(_ sender: UIButton) {
        tableView.isHidden = false
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

