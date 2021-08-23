//
//  SecondViewController.swift
//  A01721021_tshirts
//
//  Created by Student on 2/15/19.
//  Copyright © 2019 Martinezcelisa01721021. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblProduct: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblTotalPay: UILabel!
    @IBOutlet weak var imgImage: UIImageView!
    @IBOutlet weak var stpOutlet: UIStepper!
    
    @IBAction func stpAction(_ sender: UIStepper) {
        lblProduct.text = orderNames[Int(stpOutlet.value)]
        lblPrice.text = "$" + String(orderPrices[Int(stpOutlet.value)])
        imgImage.image = orderImages[Int(stpOutlet.value)]
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        totalProducts = totalProducts - 1
        totalPay = totalPay - orderPrices[Int(stpOutlet.value)]
        
        lblTotalPay.text = "Total Pay: $ " + String(totalPay)
        lblAmount.text = String(totalProducts) + " Products"
        
        stpOutlet.maximumValue = stpOutlet.maximumValue - 1
   
        stpOutlet.value = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stpOutlet.maximumValue = Double(orderNames.count) - 1.0
        lblTotalPay.text = "Total Pay: $ " + String(totalPay)
        lblAmount.text = String(totalProducts) + " Products"
        
        lblProduct.text = orderNames[0]
        lblPrice.text = String(orderPrices[0])
        imgImage.image = orderImages[0]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
