//
//  UILabel+Lotto.swift
//  M4Lotto_Goodman
//
//  Created by Goodman, Dakota K. on 3/31/26.
//

import UIKit

extension UILabel{
    func setLottoNumber(_ number: Int, with backgroundColor: UIColor? = nil, textColor: UIColor? = nil){
        layer.cornerRadius = bounds.width / 2
        clipsToBounds = true
        
        text = "\(number)"
        
        self.backgroundColor = backgroundColor ?? getColors(from: number).backgroundColor
        self.textColor = textColor ?? getColors(from: number).textColor
        
    }
    
    fileprivate func getColors(from number: Int) -> (backgroundColor: UIColor, textColor: UIColor){
        switch number{
        case 1...10:
            return(UIColor.red, UIColor.white)
        case 11...20:
            return(UIColor.green, UIColor.black)
        case 21...30:
            return(UIColor.blue, UIColor.white)
        case 31...40:
            return(UIColor.green, UIColor.black)
        case 41...45:
            return(UIColor.red, UIColor.white)
        default:
            return(UIColor.purple, UIColor.white)
            
        }
    }
}
