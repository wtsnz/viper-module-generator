//
//  VIPERViewController.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation
import UIKit

class VIPERViewController: UIViewController /* BaseViewController<VIPERView> */ {
    
    // MARK: - Properties

    var presenter: VIPERPresenterProtocol?
    
    // MARK: - UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - VIPERViewControllerProtocol

extension VIPERViewController: VIPERViewControllerProtocol {


}