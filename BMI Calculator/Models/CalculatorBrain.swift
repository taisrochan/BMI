//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Tais Rocha Nogueira on 01/06/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        //bmi = BMI(value: bmiValue, advice: "dsa", color: UIColor.red)
        
        if bmiValue <= 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        }
        if bmiValue >= 25{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor.red)
        }else{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        
        }
    }
    
    
    
    
}
