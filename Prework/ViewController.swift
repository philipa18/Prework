//
//  ViewController.swift
//  Prework
//
//  Created by Philip Alexander on 8/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0;
        
        let tip = bill * Double(tipSlider.value)/100
        let total = bill + tip;
        
        tipPercentageLabel.text = "Tip (" + String(format: "$%.1f", tipSlider.value)+"%)";
        tipAmountLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
    }
    
}

