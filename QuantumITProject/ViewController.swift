//
//  ViewController.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 27/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn_task1: UIButton!
    @IBOutlet weak var btn_task2: UIButton!
    @IBOutlet weak var btn_taks3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionMovetoTask1(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        //let task1Tab = AdvisorListController(nibName: "AdvisorListController", bundle: nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "newView") as! AdvisorListController
        self.navigationController?.pushViewController(nextViewController, animated: true)
       
        //storyBoard.instantiateViewController.pushViewController(task1Tab, animated: true)
    }
    @IBAction func actionMovetoTask2(_ sender: Any) {
    }
    
    @IBAction func actionMovetoTask3(_ sender: Any) {
    }
}

