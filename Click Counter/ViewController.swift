//
//  ViewController.swift
//  Click Counter
//
//  Created by Jamie Morgan on 5/19/20.
//  Copyright © 2020 Jamie Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var count2 = 100
    var label: UILabel!
    var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // MARK: labels
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = String(count)
        view.addSubview(label)
        self.label = label
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 200, y: 150, width: 60, height: 60)
        label2.text = String(count2)
        view.addSubview(label2)
        self.label2 = label2
        
        // MARK: buttons
        let incrementButton = UIButton()
        incrementButton.frame = CGRect(x: 150, y: 250, width: 100, height: 60)
        incrementButton.setTitle("Increment", for: .normal)
        incrementButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(incrementButton)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 150, y: 300, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(decrementButton)
        
        
        incrementButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        decrementButton.addTarget(self, action: #selector(ViewController.decreaseCount), for: UIControl.Event.touchUpInside)
    }
    
    @objc func incrementCount() {
        self.count += 1
        self.count2 += 100
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count2)"
    }
    
    @objc func decreaseCount() {
        self.count -= 1
        self.count2 -= 50
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count2)"
    }
}

