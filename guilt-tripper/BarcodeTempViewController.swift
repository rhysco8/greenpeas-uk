//
//  BarcodeTempViewController.swift
//  guilt-tripper
//
//  Created by Rhys on 07/08/2019.
//  Copyright © 2019 Greenpeas UK. All rights reserved.
//

import UIKit

class BarcodeTempViewController: UIViewController {
    
    @IBOutlet weak var userProductTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: Any) {
        let userProductSelection = userProductTextField.text!
        
        let palmOilProducts = ["Nutella"]
        let nonPalmOilProducts = ["Waitrose Dark Chocolate Spread"]
        
        if palmOilProducts.contains(userProductSelection) {
            performSegue(withIdentifier: "sadSegue", sender: nil)
        }
        else if nonPalmOilProducts.contains(userProductSelection) {
            performSegue(withIdentifier: "happySegue", sender: nil)
        }
    }
}
