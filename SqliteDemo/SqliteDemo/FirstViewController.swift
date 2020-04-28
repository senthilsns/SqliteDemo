//
//  FirstViewController.swift
//  SqliteDemo
//
//  Created by Senthil on 27/04/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet var tableView: UITableView!
    
    var db :DBHelper = DBHelper()
    var persons:[Person] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons = db.read()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
       {
        return persons.count
       }
    
     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }

    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EmpCell", for: indexPath) as! EmpCell

        cell.NameLbl?.text = persons[indexPath.row].name
        cell.AgeLbl?.text = String(persons[indexPath.row].age)


        return cell
    }
    
 
      
 
   

}
