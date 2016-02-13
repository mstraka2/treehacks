//
//  ViewController.swift
//  treehacks2016
//
//  Created by Michael Straka on 2/13/16.
//  Copyright (c) 2016 Michael Straka. All rights reserved.
//

import UIKit
import Charts
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
    
    var bloodPressure: Int = 0 {
        didSet {
            updateUI()
        }
    }

    //MARK: Actions
    
    func updateUI() {
        bloodPressureRequestLabel.text = "Your Blood Pressure is " + String(bloodPressure)
    }

    @IBAction func enterBloodPressure(sender: UIButton) {
        if let bloodPressureInput = bloodPressureTextField.text.toInt() {
            bloodPressure = bloodPressureInput
        } else {
            bloodPressureRequestLabel.text = "Please put in a number"
        }
        
    }
}

