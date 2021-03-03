//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightSlider.value = heightSlider.maximumValue/2
        weightSlider.value = weightSlider.maximumValue/2
        heightLabel.text = String(format: "%.2fm", heightSlider.value)
        weightLabel.text = String(format: "%3.0fKg", weightSlider.value)

    }

    @IBAction func heighSliderChanged(_ sender: UISlider) {
        let sliderValue = sender.value
        heightLabel.text = String(format: "%.2fm", sliderValue)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let sliderValue = sender.value
        weightLabel.text = String(format: "%3.0fKg", sliderValue)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        
        print(bmi)
    }
}

