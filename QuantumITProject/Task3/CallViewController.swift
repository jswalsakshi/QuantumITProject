//
//  CallViewController.swift
//  QuantumITProject
//
//  Created by Sakshi Jaiswal on 31/05/20.
//  Copyright © 2020 Sakshi Jaiswal. All rights reserved.
//

import UIKit
import CallKit

class CallViewController: UIViewController {
    @IBOutlet weak var btn_call: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func actionCallButtonPressed(_ sender: Any) {
        let provider = CXProvider(configuration: CXProviderConfiguration(localizedName: "Quantum IT Innovation"))
        provider.setDelegate(self, queue: nil)
        let update = CXCallUpdate()
        update.remoteHandle = CXHandle(type: .generic, value: "I am calling you...")
        provider.reportNewIncomingCall(with: UUID(), update: update, completion: { error in })
    }
}

typealias CallKitMethodHandler = CallViewController
extension CallKitMethodHandler: CXProviderDelegate {
    func providerDidReset(_ provider: CXProvider) {
    }
    func provider(_ provider: CXProvider, perform action: CXAnswerCallAction) {
        let endCallTab = EndCallViewController(nibName: "EndCallViewController", bundle: nil)
        self.present(endCallTab, animated: true, completion: {
        })
    }
    func provider(_ provider: CXProvider, perform action: CXEndCallAction) {
        action.fulfill()
    }
}
