//
//  ViewController.swift
//  Tips App
//
//  Created by Amir Zhunussov on 10.07.2022.
//

import UIKit

class ViewController: UIViewController {

   
    var tip = 0.10
    var numberSplit = 2
    var billTotal = 0.0
    var finalResult = "0.0"
    
    @IBOutlet weak var showBill: UITextField!
    @IBOutlet weak var zeroPercentLabel: UIButton!
    @IBOutlet weak var tenPercentLabel: UIButton!
    @IBOutlet weak var twentyPercentLabel: UIButton!
    @IBOutlet weak var splitNumberlLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func tipChoose(_ sender: UIButton) {
        
        showBill.endEditing(true)
        
        zeroPercentLabel.isSelected = false
        tenPercentLabel.isSelected = false
        twentyPercentLabel.isSelected = false
        
        sender.isSelected = true
        
        let number = sender.currentTitle!
        let numberWithoutPercent = String(number.dropLast())
        let numberDouble = Double(numberWithoutPercent)!
        tip = numberDouble / 100
    }
    
    
    
    @IBAction func stepperButton(_ sender: UIStepper) {
        splitNumberlLabel.text = String(format: "%.0f", sender.value)
        numberSplit = Int(sender.value)
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        performSegue(withIdentifier: "goToResult", sender: self)
        print(tip)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
       
    }
}

