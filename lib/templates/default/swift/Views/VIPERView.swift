//
//  VIPERView.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation
import UIKit

class VIPERView: UIView/*, RootView */ {
    
    // MARK: - Properties
        
    init() {
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupAutoLayoutContraints(_ parentViewController: UIViewController?) {
        
    }

    deinit {
        print("Deinit \(self)")
    }
}
