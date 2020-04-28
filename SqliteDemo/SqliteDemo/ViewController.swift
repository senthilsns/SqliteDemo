//
//  ViewController.swift
//  SqliteDemo
//
//  Created by Senthil on 27/04/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    
    var db:DBHelper = DBHelper()
    var persons:[Person] = []
    
    @IBAction func Save_TouchUpInside(_ sender: Any) {
        
        if ( nameTextField.text?.isEmpty)! || ( ageTextField.text?.isEmpty)! {
            print("Name/Age Field Empty")

        }else{
            db.insert(id:  Int(arc4random_uniform(10000)), name: nameTextField.text!, age: Int(ageTextField.text!)!)
                      
            nameTextField.text = ""
            ageTextField.text = ""
        }

             
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

