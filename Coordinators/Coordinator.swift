//
//  Coordinator.swift
//  Coordinators
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Jose Javier Aviles Gomez. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    
    var navigationController: UINavigationController {get set}
    var childCoordinators: [Coordinator] {get set}
    
    func start()
    func add(childCoordinator: Coordinator)
    func remove(childCoordinator: Coordinator)
    func finish()
}

extension Coordinator {
    func add(childCoordinator: Coordinator) {
        childCoordinators.append(childCoordinator)
    }
    
    func remove(childCoordinator: Coordinator) {
        childCoordinators = childCoordinators.filter{$0 !== childCoordinator}
    }
    
    func finish() {
        
    }
}
