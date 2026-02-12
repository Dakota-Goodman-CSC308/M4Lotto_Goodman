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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let labels = [numLabel1!, numLabel2!, numLabel3!, numLabel4!, numLabel5!, numLabel6!, numLabel7!]
        var nums = [Int]()
        while nums.count<labels.count{
            let rndNum = Int.random(in: 1...45)
            if !nums.contains(rndNum){
                nums.append(rndNum)
            }
        }
        let sortedNums = nums.sorted()
        //decending order
        for (index, label) in labels.enumerated(){
            label.layer.cornerRadius = label.bounds.width / 2
            label.clipsToBounds = true
            label.text = "\(sortedNums[index])" //String Interpolation "\()"
            
            switch sortedNums[index]{
            case 1...10:
                label.backgroundColor = .red
                label.textColor = .white
            case 11...20:
                label.backgroundColor = .yellow
                label.textColor = .black
            case 21...30:
                label.backgroundColor = .blue
                label.textColor = .white
            case 31...40:
                label.backgroundColor = .green
                label.textColor = .black
            case 41...45:
                label.backgroundColor = .red
                label.textColor = .white
            default:
                break
          
        }
            numLabel7.backgroundColor = UIColor.purple
            numLabel7.textColor = .white
            
        }
      
        /*
        numLabel1.layer.cornerRadius = numLabel1.bounds.width/2
        numLabel1.clipsToBounds = true
        numLabel2.layer.cornerRadius = numLabel1.bounds.width/2
        numLabel2.clipsToBounds = true
        numLabel3.layer.cornerRadius = numLabel1.bounds.width/2
        numLabel3.clipsToBounds = true
        numLabel4.layer.cornerRadius = numLabel1.bounds.width/2
        numLabel4.clipsToBounds = true
        numLabel5.layer.cornerRadius = numLabel1.bounds.width/2
        numLabel5.clipsToBounds = true
        numLabel6.layer.cornerRadius = numLabel1.bounds.width/2
        numLabel6.clipsToBounds = true
        numLabel7.layer.cornerRadius = numLabel1.bounds.width/2
        numLabel7.clipsToBounds = true
        
        let rand1 = Int.random(in: 1...45)
        numLabel1.text = "\(rand1)"
        switch rand1{
        case 1...10:
            numLabel1.backgroundColor = .red
            numLabel1.textColor = .white
        case 11...20:
            numLabel1.backgroundColor = .yellow
            numLabel1.textColor = .black
        case 21...30:
            numLabel1.backgroundColor = .blue
            numLabel1.textColor = .white
        case 31...40:
            numLabel1.backgroundColor = .green
            numLabel1.textColor = .black
        case 41...45:
            numLabel1.backgroundColor = .red
            numLabel1.textColor = .white
        default:
            break
        }
            
        let rand2 = Int.random(in: 1...45)
        numLabel2.text = "\(rand2)"
        switch rand2{
            case 1...10:
                numLabel2.backgroundColor = .red
                numLabel2.textColor = .white
            case 11...20:
                numLabel2.backgroundColor = .yellow
                numLabel2.textColor = .black
            case 21...30:
                numLabel2.backgroundColor = .blue
                numLabel2.textColor = .white
            case 31...40:
                numLabel2.backgroundColor = .green
                numLabel2.textColor = .black
            case 41...45:
                numLabel2.backgroundColor = .red
                numLabel2.textColor = .white
            default:
                break
          
        }
            
        let rand3 = Int.random(in: 1...45)
        numLabel3.text = "\(rand3)"
        switch rand3{
            case 1...10:
                numLabel3.backgroundColor = .red
                numLabel3.textColor = .white
            case 11...20:
                numLabel3.backgroundColor = .yellow
                numLabel3.textColor = .black
            case 21...30:
                numLabel3.backgroundColor = .blue
                numLabel3.textColor = .white
            case 31...40:
                numLabel3.backgroundColor = .green
                numLabel3.textColor = .black
            case 41...45:
                numLabel3.backgroundColor = .red
                numLabel3.textColor = .white
            default:
                break
          
        }
        
        let rand4 = Int.random(in: 1...45)
        numLabel4.text = "\(rand4)"
        switch rand4{
            case 1...10:
                numLabel4.backgroundColor = .red
                numLabel4.textColor = .white
            case 11...20:
                numLabel4.backgroundColor = .yellow
                numLabel4.textColor = .black
            case 21...30:
                numLabel4.backgroundColor = .blue
                numLabel4.textColor = .white
            case 31...40:
                numLabel4.backgroundColor = .green
                numLabel4.textColor = .black
            case 41...45:
                numLabel4.backgroundColor = .red
                numLabel4.textColor = .white
            default:
                break
          
        }
        
        let rand5 = Int.random(in: 1...45)
        numLabel5.text = "\(rand5)"
        switch rand5{
            case 1...10:
                numLabel5.backgroundColor = .red
                numLabel5.textColor = .white
            case 11...20:
                numLabel5.backgroundColor = .yellow
                numLabel5.textColor = .black
            case 21...30:
                numLabel5.backgroundColor = .blue
                numLabel5.textColor = .white
            case 31...40:
                numLabel5.backgroundColor = .green
                numLabel5.textColor = .black
            case 41...45:
                numLabel5.backgroundColor = .red
                numLabel5.textColor = .white
            default:
                break
          
        }
        
        let rand6 = Int.random(in: 1...45)
        numLabel6.text = "\(rand6)"
        switch rand6{
            case 1...10:
                numLabel6.backgroundColor = .red
                numLabel6.textColor = .white
            case 11...20:
                numLabel6.backgroundColor = .yellow
                numLabel6.textColor = .black
            case 21...30:
                numLabel6.backgroundColor = .blue
                numLabel6.textColor = .white
            case 31...40:
                numLabel6.backgroundColor = .green
                numLabel6.textColor = .black
            case 41...45:
                numLabel6.backgroundColor = .red
                numLabel6.textColor = .white
            default:
                break
          
        }
        
        let rand7 = Int.random(in: 1...45)
        numLabel7.text = "\(rand7)"
        switch rand7{
            case 1...10:
                numLabel7.backgroundColor = .red
                numLabel7.textColor = .white
            case 11...20:
                numLabel7.backgroundColor = .yellow
                numLabel7.textColor = .black
            case 21...30:
                numLabel7.backgroundColor = .blue
                numLabel7.textColor = .white
            case 31...40:
                numLabel7.backgroundColor = .green
                numLabel7.textColor = .black
            case 41...45:
                numLabel7.backgroundColor = .red
                numLabel7.textColor = .white
            default:
                break
          
        }
         */




    }

}

