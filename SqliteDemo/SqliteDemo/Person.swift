//
//  Person.swift
//  SqliteDemo
//
//  Created by Senthil on 28/04/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit
import Foundation

class Person
{
    var name: String = ""
    var age: Int = 0
    var id: Int = 0

    init(id:Int ,name:String, age:Int)
    {
        self.id = id
        self.name = name
        self.age = age
    }
    
}
