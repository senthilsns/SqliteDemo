//
//  SecondViewController.swift
//  SqliteDemo
//
//  Created by Senthil on 30/04/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var NameUpdateField: UITextField!
    @IBOutlet var AgeUpdateField: UITextField!

    var db : DBHelper = DBHelper()
    
    var name  : String = ""
    var Id : Int = 0
    var age : Int = 0
    
    
    @IBAction func Update_TouchUpInside(_ sender: Any) {
   
        db.update(id: Id, name: NameUpdateField.text!, age: Int(AgeUpdateField.text!)!)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Update"
        
        NameUpdateField.text = name
        AgeUpdateField.text = String(age)

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
