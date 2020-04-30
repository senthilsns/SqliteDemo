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
        
        title = "Emp List"
        persons = db.read()


        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        

        
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
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        
           db.deleteByID(id: persons[indexPath.row].id)
           persons.remove(at: indexPath.row)
           tableView.deleteRows(at: [indexPath], with: .fade)
            
        };
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let newViewController = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        newViewController.Id = persons[indexPath.row].id
        newViewController.name = persons[indexPath.row].name
        newViewController.age = persons[indexPath.row].age
        self.navigationController?.pushViewController(newViewController, animated: true)
    }



}
