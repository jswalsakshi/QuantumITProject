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
    
    var data = [ListData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTable()
        self.setupPostMethod()
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
        self.tblView.rowHeight = UITableView.automaticDimension
    }
    
    func registerCellNib() {
        self.tblView.register(UINib(nibName: "ProfileTableViewCell", bundle: nil), forCellReuseIdentifier: "ProfileTableViewCell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        let dataObject = self.data[indexPath.row]
        cell.configCell(data: dataObject)
        return cell
    }
}

//MARK: API Method
extension AdvisorListController {
    func setupPostMethod(){
        if let url = URL(string: "https://design.wealthzi.com/api/getAdvisorList"){
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                if let data = data  {
                    DispatchQueue.main.async {
                        let jsonDecoder = JSONDecoder()
                        do {
                            let responseData = try jsonDecoder.decode(AdvisorListResponse.self, from: data)
                            if let s = responseData.status, s == 1 {
                                let listData = responseData.data
                                listData?.forEach({ (profile) in
                                    self.data.append(profile)
                                })
                                self.tblView.separatorStyle = .singleLine
                                self.tblView.reloadData()
                            } else {
                                if let message = responseData.msg {
                                    print(message)
                                }
                            }
                        } catch {
                            print("Error in parsing JSON")
                        }
                    }
                }
            }.resume()
        }
    }
}
