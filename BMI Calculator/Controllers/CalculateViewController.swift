//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Tais Rocha Nogueira on 01/06/23.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain ()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        let heigh = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heigh)m"
        
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
            
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        vc.bmiValue = calculatorBrain.getBMIValue()
        vc.advice = calculatorBrain.getAdvice()
        vc.color  = calculatorBrain.getColor()
        self.present(vc, animated: true)

        
    
    }
    
    
}

