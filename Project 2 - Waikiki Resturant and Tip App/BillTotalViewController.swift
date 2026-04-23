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
        
        self.navigationItem.title = "Tip Calculator"

        billTotalTextField.placeholder = "Enter the Bill amount"
        tipPercentageControl.selectedSegmentIndex = -1
        titleLabel.text = "Guide to Tipping"
        tipDescriptLabel.text = "Tipping is something that is expected when dining in the USA. As those in the service industry often rely on these tips, it is recommended and encouraged to tip after a meal. 15% of your bill is the average baseline for tipping for service. However, for great service the amount can increase to 18-20%."
        setPercentageLabel.text = "Set Tip%"
        tipAmountLabel.text = "Your Tip Amount:"
        totalBillAndTipAmountLabel.text = "Your Total Bill + Tip Amount:"
        tipResultLabel.text = ""
        billLabel.text = ""
        
    }
    

    @IBAction func tipPercentagePressed(_ sender: Any)
    {
        switch tipPercentageControl.selectedSegmentIndex
        {
           
        case 0:
            let billAmount = Float((billTotalTextField.text!))!
            let tipAmountCalculation = 0.15 * billAmount
            let totalAmount = billAmount + tipAmountCalculation
            tipResultLabel.text = "\(tipAmountCalculation)"
            billLabel.text = "\(totalAmount)"
        
        case 1:
            let billAmount = Float((billTotalTextField.text!))!
            let tipAmountCalculation = 0.18 * billAmount
            let totalAmount = billAmount + tipAmountCalculation
            tipResultLabel.text = "\(tipAmountCalculation)"
            billLabel.text = "\(totalAmount)"
            
            
        case 2:
            let billAmount = Float((billTotalTextField.text!))!
            let tipAmountCalculation = 0.20 * billAmount
            let totalAmount = billAmount + tipAmountCalculation
            tipResultLabel.text = "\(tipAmountCalculation)"
            billLabel.text = "\(totalAmount)"
            
        default:
            break
        
            
        }
        
        
        
        
        
        
    }
    
    
    
    
    
    
    

}
