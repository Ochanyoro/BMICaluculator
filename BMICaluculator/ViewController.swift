//
//  ViewController.swift
//  BMICaluculator
//
//  Created by 大和田一裕 on 2022/06/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heightTextField.placeholder = "身長をcmで入力してください"
        weightTextField.placeholder = "体重をkgで入力してください"
    }

    @IBAction func calcButtonAction(_ sender: Any) {
        let doubleH = Double(heightTextField.text!)
        let doubleW = Double(weightTextField.text!)
        bmiLabel.text = caluculation(height: doubleH!, weight: doubleW!)
    }
    
    func caluculation(height: Double,weight: Double) -> String {
        let h = height / 100
        let w = weight
        var result  = w / (h * h)
        result = floor(result * 10) / 10
        
        return result.description
    }
}

