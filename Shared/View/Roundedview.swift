//
//  Roundedview.swift
//  Fotografos
//
//  Created by Abhilash S (BLR GSS) on 24/02/20.
//  Copyright © 2020 Abhilash S (BLR GSS). All rights reserved.
//

import UIKit

class RoundedButton:UIButton {
    
    //this method is called when the class is initialized
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
    }
}

class RoundedShadowView: UIView
{
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.shadowColor = UIColor.blue.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 3
    }
}
class RoundedImageView : UIImageView
{
   
    override func awakeFromNib() {
         super.awakeFromNib()
        layer.cornerRadius = 5
    }
}
