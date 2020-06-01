//
//  ProfileTableViewCell.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 29/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    var listData: ListData?
    
    @IBOutlet weak var view_container: UIView!
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_qualification: UILabel!
    @IBOutlet weak var lbl_experience: UILabel!
    @IBOutlet weak var lbl_bio: UILabel!
    @IBOutlet weak var lbl_number: UILabel!
    @IBOutlet weak var lbl_email: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configCell(data: ListData){
        self.listData = data
        self.setUpUI(data: data)
    }
    
    private func setUpUI(data: ListData) {
        self.lbl_name.text = data.Name
        self.lbl_qualification.text = data.Qualification
        self.lbl_experience.text = data.experience
        self.lbl_bio.text = data.Bio
        self.lbl_number.text = data.phone
        self.lbl_email.text = data.email
    }
    
}
