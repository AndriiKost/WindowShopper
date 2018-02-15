//
//  CurrencyTextField.swift
//  WindowShopper
//
//  Created by Andrii Kost on 2/15/18.
//  Copyright © 2018 Andrii Kost. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {

    // Customizing text field UI
    
    override func awakeFromNib() {
        super .awakeFromNib()
        // using Color Literal to set color
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        // IF p == nil the code below will never run
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }

}
