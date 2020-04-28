//
//  EmpCell.swift
//  SqliteDemo
//
//  Created by Senthil on 28/04/20.
//  Copyright © 2020 Senthil. All rights reserved.
//

import UIKit

class EmpCell: UITableViewCell {

    @IBOutlet var NameLbl: UILabel!
    @IBOutlet var AgeLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
