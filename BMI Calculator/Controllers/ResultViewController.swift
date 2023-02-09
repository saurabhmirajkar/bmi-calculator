//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Saurabh Mirajkar on 09/02/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = bmi?.color
        bmiLabel.text = bmi?.value
        adviceLabel.text = bmi?.advice
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
