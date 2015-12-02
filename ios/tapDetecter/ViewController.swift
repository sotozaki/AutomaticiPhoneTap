//
//  ViewController.swift
//  tapDetecter
//
//  Created by sotozakimasanori on 12/2/15.
//  Copyright © 2015 sotozaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()
    let button = UIButton()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        label.backgroundColor = UIColor.greenColor()
        label.frame = CGRectMake(50,50,300,30)
        label.textAlignment = .Center 
        label.text = String(count)
        self.view.addSubview(label)

        
        button.frame = CGRectMake(50,190,300,300)
        button.backgroundColor = UIColor.redColor()
        button.setTitle("Button", forState: UIControlState.Normal)
        button.setTitle("Highlighted", forState: UIControlState.Highlighted)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Highlighted)
        button.addTarget(self, action: "tap", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
    }
    
    func tap(){
        count++
        label.text = String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

