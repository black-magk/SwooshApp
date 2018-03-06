//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Landon Carr on 3/6/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }

}
