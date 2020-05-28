//
//  AdvisorListController.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 27/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit

class AdvisorListController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
       }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nil)
    }

    convenience init() {
        self.init(nibName: nil, bundle: nil)
    }


}
