//
//  ResultViewController.swift
//  Tips App
//
//  Created by Amir Zhunussov on 10.07.2022.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var resultBillLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
