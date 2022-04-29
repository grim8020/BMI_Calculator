//
//  ViewController.swift
//  BMI Calc
//
//  Created by Shane Grim on 4/28/22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = Int(sender.value)
        let heightFeet = height / 12
        let heightInches = Int(sender.value) % 12
        heightLabel.text = "\(heightFeet) ft. \(heightInches) in."
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightPounds = Int( sender.value)
        weightLabel.text = "\(weightPounds) lbs."
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / (height * height) * 703
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    
    
    
}

