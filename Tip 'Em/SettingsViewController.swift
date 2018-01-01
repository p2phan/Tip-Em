//
//  SettingsViewController.swift
//  Tip 'Em
//
//  Created by Peter  Phan on 12/31/17.
//  Copyright © 2017 Peter  Phan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UITextField!
    @IBOutlet weak var defaultSplit: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        defaultTip.text = defaults.string(forKey: "defaultTip") ?? "15"
        defaultSplit.text = defaults.string(forKey: "defaultSplit") ?? "1"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeDefaultTip(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTip.text, forKey: "defaultTip")
        defaults.set(defaultSplit.text, forKey: "defaultSplit")
        
        defaults.synchronize()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
