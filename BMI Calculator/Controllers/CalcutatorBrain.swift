//
//  Calutator.swift
//  BMI Calculator
//
//  Created by Saurabh Mirajkar on 09/02/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: Float?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        bmi = weight / pow(height,2)
    }
    
    func getBmiValue() -> String {
        return String(format: "%.1f", bmi ?? 0)
    }
}
