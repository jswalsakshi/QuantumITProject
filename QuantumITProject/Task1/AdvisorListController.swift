//
//  AdvisorListController.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 27/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit

class AdvisorListController: UIViewController {
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTable()
    }
    
    @IBAction func actionBackNavigationButtonPressed(_ sender: Any) {
        self.dismiss(animated: true) {
            
        }
    }
    
}

//MARK: TableView Methods
typealias TableViewHandler = AdvisorListController
extension TableViewHandler: UITableViewDelegate, UITableViewDataSource {
    
        private func setupTable() {
        self.registerCellNib()
        self.tblView.delegate = self
        self.tblView.dataSource = self
        //self.tblView.estimatedRowHeight = 120
        self.tblView.rowHeight = UITableView.automaticDimension
    }
    
    func registerCellNib() {
        self.tblView.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        return cell
    }
}
