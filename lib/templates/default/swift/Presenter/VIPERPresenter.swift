//
//  VIPERPresenter.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERPresenter: VIPERPresenterProtocol {
    
    // MARK: - Properties
    
    weak var viewController: VIPERViewControllerProtocol?
    var interactor: VIPERInteractorInputProtocol?
    var wireframe: VIPERWireframeProtocol?

    deinit {
        print("Deinit \(self)")
    }
}

// MARK: - VIPERInteractorOutputProtocol

extension VIPERPresenter: VIPERInteractorOutputProtocol {
	
}

