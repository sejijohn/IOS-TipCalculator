//
//  ViewController.swift
//  TipCal
//
//  Created by Seji John on 3/3/17.
//  Copyright © 2017 Seji John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var divideByText: UITextField!
    @IBOutlet weak var perPersonLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentage = [0.09,0.12,0.15,0.18,0.20]
        let bill = Double(billText.text!) ?? 0
        let divideBy = Double(divideByText.text!) ?? 1
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        if(divideBy != 0){
           let perPerson = total/divideBy
            perPersonLabel.text = String(format: "$%.2f", perPerson)
        } else{
            perPersonLabel.text = "Error"
        }
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }

}

