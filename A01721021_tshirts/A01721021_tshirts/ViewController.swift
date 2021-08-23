//
//  ViewController.swift
//  A01721021_tshirts
//
//  Created by Student on 2/13/19.
//  Copyright © 2019 Martinezcelisa01721021. All rights reserved.
//

import UIKit

var orderNames = [String]()
var orderPrices = [Int]()
var orderImages = [UIImage]()
var totalProducts = 0
var totalPay = 0


class ViewController: UIViewController {
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblProduct: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var imgShirt: UIImageView!
    @IBOutlet weak var stpOutlet: UIStepper!
    
    @IBAction func stpAction(_ sender: UIStepper) {
        lblProduct.text = arrayProductNames[Int(stpOutlet.value)]
        lblPrice.text = "$" + String(arrayPrices[Int(stpOutlet.value)])
        imgShirt.image = arrayProductImages[Int(stpOutlet.value)]
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        orderNames.append(arrayProductNames[Int(stpOutlet.value)])
        orderImages.append(arrayProductImages[Int(stpOutlet.value)])
        orderPrices.append(arrayPrices[Int(stpOutlet.value)])
        
        totalProducts = totalProducts + 1
        totalPay = totalPay + arrayPrices[Int(stpOutlet.value)]
        
        lblAmount.text = String(totalProducts) + " Products"
        
    }
    
    
    @IBAction func btnReview(_ sender: UIButton) {
    }
    
    let arrayProductNames = ["Ajax Jersey", "Lyon Jersey", "Juventus Jersey", "Atletico Jersey", "Real Madrid Jersey", "Russia Jersey", "PSV Jersey", "Porto Jersey"  ]
    let arrayPrices = [130, 120, 150, 140, 160, 120, 100, 110]
    let arrayProductImages = [#imageLiteral(resourceName: "ajax"), #imageLiteral(resourceName: "lyon"), #imageLiteral(resourceName: "juventus"), #imageLiteral(resourceName: "atletico"), #imageLiteral(resourceName: "real"), #imageLiteral(resourceName: "russia"), #imageLiteral(resourceName: "psv"), #imageLiteral(resourceName: "porto")]
    
    
    
    override func viewDidLoad() {
        stpOutlet.maximumValue = Double(arrayProductNames.count) - 1.0
        
        lblProduct.text = arrayProductNames[0]
        lblPrice.text = "$" + String(arrayPrices[0])
        imgShirt.image = arrayProductImages[0]
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

