//
//  CalculatorBrain.swift
//  BMI Calc
//
//  Created by Shane Grim on 4/28/22.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = (weight * 703) / (height * height)
        
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(48.0, 178.0, 221.0, 1.0))
        } else if /*bmiValue > 18.5 &&*/ bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(0.0, 255.0, 198.0, 1.0))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor(245.0, 83.0, 83.0, 1.0))
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice given"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
}

extension UIColor {
    convenience init(_ r: Double,_ g: Double,_ b: Double,_ a: Double) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
}
