//
//  GoalCell.swift
//  goalpost-app
//
//  Created by Sergey Neupokoev on 19/1/20.
//  Copyright © 2020 Sergey Neupokoev. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeCell: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    
    func configureCell(description: String, type: goalType, goalProgressAmount: Int){
        self.goalDescriptionLabel.text = description
        self.goalTypeCell.text = type.rawValue
        self.goalProgressLabel.text = String(describing: goalProgressAmount)
    }
    
}
