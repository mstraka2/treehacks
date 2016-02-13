//
//  ViewController.swift
//  treehacks2016
//
//  Created by Michael Straka on 2/13/16.
//  Copyright (c) 2016 Michael Straka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties

    @IBOutlet weak var bloodPressureTextField: UITextField!
    @IBOutlet weak var bloodPressureRequestLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func enterBloodPressure(sender: UIButton) {
        bloodPressureRequestLabel.text = "Your Blood Pressure is " + bloodPressureTextField.text
    }
}

