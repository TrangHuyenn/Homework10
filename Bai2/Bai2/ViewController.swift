//
//  ViewController.swift
//  Bai2
//
//  Created by Trang Huyền on 6/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    let rectangleView: UIView = {
        let view = UIView(frame: CGRect(x: 50, y: 200, width: 200, height: 200))
        view.backgroundColor = UIColor.white
        return view
    }()
    
    var layer: CALayer {
        return rectangleView.layer
      }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(rectangleView)
        setUpLayer()
        
        let topBorder = CALayer()
        let bottomBorder = CALayer()
        let rightBorder = CALayer()
        let leftBorder = CALayer()

        topBorder.frame = CGRect(x: 0, y: 0, width: layer.bounds.width + 20, height: 20)
        topBorder.backgroundColor = #colorLiteral(red: 1, green: 0.6941176471, blue: 0.4588235294, alpha: 1)
        
        rightBorder.frame = CGRect(x: 200, y: 0, width: 20, height: layer.bounds.height + 20)
        rightBorder.backgroundColor = #colorLiteral(red: 0.8588235294, green: 0.3764705882, blue: 0.1568627451, alpha: 1)
        
        bottomBorder.frame = CGRect(x: 0, y: 200, width: layer.bounds.width + 20, height: 20)
        bottomBorder.backgroundColor = #colorLiteral(red: 0.8588235294, green: 0.3764705882, blue: 0.1568627451, alpha: 1)
        
        leftBorder.frame = CGRect(x: 0, y: 0, width: 20, height: layer.bounds.height + 20)
        leftBorder.backgroundColor = #colorLiteral(red: 1, green: 0.6941176471, blue: 0.4588235294, alpha: 1)
        
        self.layer.addSublayer(topBorder)
        self.layer.addSublayer(rightBorder)
        self.layer.addSublayer(bottomBorder)
        self.layer.addSublayer(leftBorder)

        print(layer.bounds.width)
        print(layer.bounds.height)

    }
    
    func setUpLayer() {
        layer.backgroundColor = UIColor.orange.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowRadius = 10.0
    
      }

}

