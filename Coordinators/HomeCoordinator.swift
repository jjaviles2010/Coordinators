//
//  HomeCoordinator.swift
//  Coordinators
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Jose Javier Aviles Gomez. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    var user: String
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: MainCoordinator?
    
    init(navigationController: UINavigationController, user: String) {
        self.navigationController = navigationController
        self.user = user
    }
    
    func start() {
        let vc = HomeViewController.instantiateFromStoryboard(.main)
        vc.coordinator = self
        vc.user = user
        navigationController.pushViewController(vc, animated: true)
    }
    
    func finish() {
        navigationController.popViewController(animated: true)
        parentCoordinator?.childDidFinish(childCoordinator: self)
    }
    
    deinit {
        print("HomeCoordinator deinit")
    }
    
}
