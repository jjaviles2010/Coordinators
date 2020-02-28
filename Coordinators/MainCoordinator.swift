//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Jose Javier Aviles Gomez. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator, AccountCreating, Logging {
    var navigationController: UINavigationController
    
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiateFromStoryboard(.main)
        vc.coordinator = self
        navigationController.viewControllers = [vc]
    }
    
    func login(user: String) {
        let childCoordinator = HomeCoordinator(navigationController: navigationController, user: user)
        childCoordinator.parentCoordinator = self
        add(childCoordinator: childCoordinator)
        childCoordinator.start()
    }
    
    func createAccount() {
        let vc = CreateAccountViewController.instantiateFromStoryboard(.main)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func childDidFinish(childCoordinator: Coordinator) {
        remove(childCoordinator: childCoordinator)
    }
}
