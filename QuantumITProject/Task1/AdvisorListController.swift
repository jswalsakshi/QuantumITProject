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

// https://jsonplaceholder.typicode.com/posts/
extension AdvisorListController {
    func setupPostMethod(){
        if let url = URL(string: "https://design.wealthzi.com/api/getAdvisorList"){
            var request = URLRequest(url: url)
            request.httpMethod = "POST"

            URLSession.shared.dataTask(with: request) { (data, response, error) in
                guard let data = data else {
                    if error == nil{
                        print(error?.localizedDescription ?? "Unknown Error")
                    }
                    return
                }
                
                if let response = response as? HTTPURLResponse{
                    guard (200 ... 299) ~= response.statusCode else {
                        print("Status code :- \(response.statusCode)")
                        print(response)
                        return
                    }
                }
                
                do{
                    let responseData = try JSONSerialization.jsonObject(with: data, options: [])
                    print(responseData)
                }catch let error{
                    print(error.localizedDescription)
                }
            }.resume()
        }
    }
}

extension Dictionary {
    func percentEscaped() -> String {
        return map { (key, value) in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            return escapedKey + "=" + escapedValue
        }
        .joined(separator: "&")
    }
}

extension CharacterSet {
    static let urlQueryValueAllowed: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@" // does not include "?" or "/" due to RFC 3986 - Section 3.4
        let subDelimitersToEncode = "!$&'()*+,;="

        var allowed = CharacterSet.urlQueryAllowed
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
}

