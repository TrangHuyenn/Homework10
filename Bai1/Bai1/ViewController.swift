//
//  ViewController.swift
//  Bai1
//
//  Created by Trang Huyền on 6/11/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt_kWh: UITextField!
    
    @IBOutlet var lbMoney: UILabel!
    @IBOutlet weak var btnPress: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        txt_kWh.placeholder = "Số kWh"
        txt_kWh.keyboardType = .numberPad
        btnPress.setTitle("Tính tiền", for: .normal)
        lbMoney.text = ""
    }

    @IBAction func onPress(_ sender: Any) {
        
        guard let kWh = Double(txt_kWh.text!) else { return  }
        
        if kWh <= 50 {
            lbMoney.text = "Số tiền diện của bạn: \(kWh*1.678)"
        }
        else if kWh <= 100 {
            lbMoney.text = "Số tiền diện của bạn: \(kWh*1.734)"
        }
        else if kWh <= 200 {
            lbMoney.text = "Số tiền diện của bạn: \(kWh*2.014)"
        }
        else if kWh <= 300 {
            lbMoney.text = "Số tiền diện của bạn: \(kWh*2.536)"
        }
        else if kWh <= 400 {
            lbMoney.text = "Số tiền diện của bạn: \(kWh*2.834)"
        }
        else {
            lbMoney.text = "Số tiền diện của bạn: \(kWh*2.927)"

        }
    }
    
}

