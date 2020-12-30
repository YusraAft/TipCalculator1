//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Yusra on 12/29/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var peopleField: UITextField! //to access the element or make a change we make outlets
    @IBOutlet weak var personBillLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello!")
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        //Calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2] //swift array
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update the tip and total labels
        tipLabel.text  = String(format: "$%.2f", tip) //% sign is for saying something will be thre  f = float; d = int;@=str
        totalLabel.text =  String(format: "$%.2f", total)// beforehand we had this:"$\(total)" and also the .2 is for saying 2 decimal places
    }
    @IBAction func divideBill(_ sender: Any) { //everytime the user taps on the text field by number of people, this function will run
        
        let bill = Double(billField.text!) ?? 0
        //Calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2] //swift array
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //update the tip and total labels
        
        let people = Double(peopleField.text!) ?? 1
        let perBill = total/people
        personBillLabel.text = String(format: "$%.2f", perBill)
    }
}

