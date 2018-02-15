//
//  ViewController.swift
//  WindowShopper
//
//  Created by Andrii Kost on 2/15/18.
//  Copyright © 2018 Andrii Kost. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var wageLabel: CurrencyTextField!
    @IBOutlet weak var itemPriceLabel: CurrencyTextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calculateButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calculateButton.backgroundColor = #colorLiteral(red: 1, green: 0.6874933917, blue: 0.01955647323, alpha: 1)
        calculateButton.setTitle("Calculate", for: .normal)
        calculateButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        // Add the target what will be called when the button pressed (what function is going to be called)
        calculateButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        // Setting input Accessory View ( hiding and showing )
        wageLabel.inputAccessoryView = calculateButton
        itemPriceLabel.inputAccessoryView = calculateButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }
    
    @objc func calculate() {
        
        // if text fields has data (not nil), then store that data into new variables
        if let wageText = wageLabel.text, let priceText = itemPriceLabel.text {
            
            //Casting string into the double
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
            
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageLabel.text = ""
        itemPriceLabel.text = ""
        
    }
    
}

