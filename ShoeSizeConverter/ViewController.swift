//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Ilija on 11/29/14.
//  Copyright (c) 2014 Ilija. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sizeTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertBtnClick(sender: UIButton) {
        var val = sizeTextField.text.toInt();
        if(val != nil){
            resultLabel.textColor = UIColor.blackColor();
            resultLabel.text = String(val! * 30);
        }
        else{
            resultLabel.textColor = UIColor.redColor();
            resultLabel.text = "You can only enter whole numbers in tsxt box asshole !!!";
        }
    }

}

