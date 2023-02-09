//
//  Calutator.swift
//  BMI Calculator
//
//  Created by Saurabh Mirajkar on 09/02/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBmi(height: Float, weight: Float) {
        let bmiValue = weight / pow(height,2)
        
        switch bmiValue {
            
        case ..<18.5 :
            bmi = BMI(value: String(format: "%.1f", bmiValue), advice: "Eat more pies", color: .blue)
            
        case 18.5...24.9 :
            bmi = BMI(value: String(format: "%.1f", bmiValue), advice: "Fit as a fiddle", color: .green)
            
        case 25... :
            bmi = BMI(value: String(format: "%.1f", bmiValue), advice: "Eat less pies", color: .purple)
            
        default: print("Are you an alien?")
            
        }
        
    }
    
    func getBmi() -> BMI? {
        return bmi
    }
    
}
