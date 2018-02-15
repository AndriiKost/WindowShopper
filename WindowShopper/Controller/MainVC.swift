//
//  ViewController.swift
//  WindowShopper
//
//  Created by Andrii Kost on 2/15/18.
//  Copyright © 2018 Andrii Kost. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

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
        
    }
    
    @objc func calculate() {
        print("we got here!")
    }

}

