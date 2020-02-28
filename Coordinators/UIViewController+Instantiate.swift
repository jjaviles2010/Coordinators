//
//  UIViewController+Instantiate.swift
//  Coordinators
//
//  Created by Jose Javier Aviles Gomez on 27/02/20.
//  Copyright © 2020 Jose Javier Aviles Gomez. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static func instantiateFromStoryboard(_ storyboard: UIStoryboard) -> Self {
        
        let identifier = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
    
}
