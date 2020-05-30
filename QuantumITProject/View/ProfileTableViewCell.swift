//
//  ProfileTableViewCell.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 29/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_qualification: UILabel!
    @IBOutlet weak var lbl_experience: UILabel!
    @IBOutlet weak var lbl_bio: UILabel!
    @IBOutlet weak var lbl_number: UILabel!
    @IBOutlet weak var lbl_email: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
