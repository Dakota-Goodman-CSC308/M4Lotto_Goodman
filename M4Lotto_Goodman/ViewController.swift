//
//  ViewController.swift
//  M4Lotto_Goodman
//
//  Created by Goodman, Dakota K. on 2/10/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numLabel1: UILabel!
    @IBOutlet weak var numLabel2: UILabel!
    @IBOutlet weak var numLabel3: UILabel!
    @IBOutlet weak var numLabel4: UILabel!
    @IBOutlet weak var numLabel5: UILabel!
    @IBOutlet weak var numLabel6: UILabel!
    @IBOutlet weak var numLabel7: UILabel!
    
    @IBOutlet var labels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func getColors(from number: Int?) -> (backgroundColor: UIColor, textColor: UIColor){
        guard let number else{
            return (UIColor.purple, UIColor.white)
        }
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
    
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        coordinator.animate { _ in
            for label in self.labels {
                label.layer.cornerRadius = label.bounds.width / 2
                label.clipsToBounds = true
            }
        }
    }
        
    override func viewDidAppear(_ animated: Bool) {
        let nums = Int.uniqueRandomNumber(in: 1 ... 45, count: 7)
            
            //decending order
            for (index, label) in labels.enumerated(){
                if label == labels.last{
                    label.setLottoNumber(nums[index], with: .purple, textColor: .white)
                } else {
                    label.setLottoNumber(nums[index])
                }
            }
        }
    }
