//
//  OptionsViewController.swift
//  FoodOrder
//
//  Created by Chinonso Obidike on 2/23/19.
//  Copyright © 2019 Chinonso Obidike. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var totalPricesLabel: UILabel!
    
    var totalOrder: Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        submitButton.isEnabled = false
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if totalOrder > 0{
            submitButton.isEnabled = true
        }
        totalPricesLabel.text = String(totalOrder)
    }
    
    @IBAction func unwindToOptions(unwindSegue: UIStoryboardSegue) {
        
    }

    
    @IBAction func submitButtonPressedn(_ sender: UIButton) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}