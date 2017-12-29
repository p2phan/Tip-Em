//
//  ViewController.swift
//  Tip 'Em
//
//  Created by Peter  Phan on 12/28/17.
//  Copyright © 2017 Peter  Phan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipField: UITextField!
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.billField.becomeFirstResponder()
   

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calcTip(_ sender: Any) {
        
        let split = Int(splitField.text!) ?? 1
        let bill =  Double(billField.text!) ?? 0
        let tipPercent = Int(tipField.text!) ?? 0
        let tip = bill/Double(split) * Double(tipPercent)/100
        let total = bill/Double(split) + tip
        
        tipLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total)
    }
}

