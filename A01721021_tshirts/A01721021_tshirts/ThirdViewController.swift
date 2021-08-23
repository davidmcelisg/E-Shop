//
//  ThirdViewController.swift
//  A01721021_tshirts
//
//  Created by Student on 2/20/19.
//  Copyright © 2019 Martinezcelisa01721021. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var tvwProduct: UITextView!
    @IBOutlet weak var tvwPrices: UITextView!
    @IBOutlet weak var lblTotalPay: UILabel!
    
    
    
    override func viewDidLoad() {
        for name in orderNames {
            tvwProduct.text = tvwProduct.text + name + "\n"
        }
        for price in orderPrices {
            tvwPrices.text = tvwPrices.text + "$" + String(price) + "\n"
        }
        
        lblTotalPay.text = "Total: $" + String(totalPay)
        
        super.viewDidLoad()

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
