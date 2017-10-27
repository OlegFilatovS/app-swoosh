//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Admin on 24.10.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
