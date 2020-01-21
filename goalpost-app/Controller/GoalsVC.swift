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
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
        
    }

}


extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
 
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else {
            return UITableViewCell()
        }
        cell.configureCell(description: "Code for a week", type: .shortTerm, goalProgressAmount: 7)
        return cell
    }
    
}
