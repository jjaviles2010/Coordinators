//
//  ViewController.swift
//  Coordinators
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Jose Javier Aviles Gomez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfUser: UITextField!
    weak var coordinator: (AccountCreating & Logging)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        coordinator?.login(user: tfUser.text!)
    }
    
    @IBAction func createAccount(_ sender: Any) {
        coordinator?.createAccount()
    }
    
}

