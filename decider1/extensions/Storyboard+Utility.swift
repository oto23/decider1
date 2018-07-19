//
//  Storyboard+Utility.swift
//  decider1
//
//  Created by Macbook pro on 7/19/18.
//  Copyright © 2018 None. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    enum DCType: String {
        case main
        case login
        
        var filename: String {
            return rawValue.capitalized
        }
    }
    convenience init(type: DCType, bundle: Bundle? = nil) {
        self.init(name: type.filename, bundle: bundle)
        
    }
    static func initialViewController(for type: DCType) -> UIViewController {
        let storyboard = UIStoryboard(type: type)
        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            fatalError("Couldn't instantiate initial view controller for \(type.filename) storyboard.")
        }
        
        return initialViewController
    }
}
