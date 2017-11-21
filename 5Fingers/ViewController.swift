//
//  ViewController.swift
//  5Fingers
//
//  Created by Melanie Gravier on 11/21/17.
//  Copyright © 2017 Melanie Gravier. All rights reserved.
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBAction func guess(_ sender: Any) {
        print("Guess pressed")
        let randNum = String(arc4random_uniform(6))
        if (randNum == fingersTextField.text) {
            resultLabel.text = "You're right"
        }
        else {
            resultLabel.text = "Wrong! It was " + randNum + "!"
        }
    }
    @IBOutlet var fingersTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

