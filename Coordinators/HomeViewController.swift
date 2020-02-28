//
//  HomeViewController.swift
//  Coordinators
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Jose Javier Aviles Gomez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var lbUser: UILabel!
    var user: String!
    weak var coordinator: HomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbUser.text = user
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if(isMovingFromParent) {
            coordinator?.finish()
        }
    }
    
    @IBAction func logout(_ sender: Any) {
        coordinator?.finish()
    }
    
    deinit {
        print("HomeViewController deinit")
    }

}
