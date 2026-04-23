//
//  BillTotalViewController.swift
//  Project 2 - Waikiki Resturant and Tip App
//
//  Created by Jillian Shirai on 4/21/26.
//

import UIKit

class BillTotalViewController: UIViewController {

   
    @IBOutlet weak var billTotalTextField: UITextField!
    
    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var tipDescriptLabel: UILabel!
    
    @IBOutlet weak var setPercentageLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalBillAndTipAmountLabel: UILabel!
    
    @IBOutlet weak var tipResultLabel: UILabel!
    
    @IBOutlet weak var billLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        billTotalTextField.placeholder = "Enter the Bill amount"
        tipPercentageControl.selectedSegmentIndex = -1
        titleLabel.text = "Tip Calculator"
        
        
        
        
        
        
        
    }
    

    

}
