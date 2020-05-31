//
//  AdvisorListResponse.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 01/06/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import Foundation

class AdvisorListResponse: Codable {
    
    var status: Int?
    var msg: String?
    var data: [ListData]?
}

class ListData: Codable {
    var id: String?
    var user_id: String?
    var Name: String?
    var StartDate: String?
    var experience: String?
    var photo: String?
    var email: String?
    var phone: String?
    var Bio: String?
    var Qualification: String?
    var category: String?
    var state: String?
    var area: String?
}
