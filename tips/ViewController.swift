//
//  ViewController.swift
//  tips
//
//  Created by Han on 1/4/15.
//  Copyright (c) 2015 Tucker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ways to refer to each of these items

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var percentageLabel: UILabel!
    
    //functions for the items
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        percentageLabel.text = "0.18"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22, 0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
      
        
  var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        var percentage = tipPercentage

        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        percentageLabel.text = String(format: "%.2f", percentage)
        
    }
    
    //swipe gestures to remove keyboard

    @IBAction func onTap(sender:AnyObject)
     {
        
    view.endEditing(true)
    
    }
}

