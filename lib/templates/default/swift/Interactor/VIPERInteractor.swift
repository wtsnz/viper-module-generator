//
//  VIPERInteractor.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERInteractor: VIPERInteractorInputProtocol {
    
    // MARK: - Properties
    
    // MARK: - VIPERInteractorInputProtocol    

    weak var presenter: VIPERInteractorOutputProtocol?
    var localDataManager: VIPERLocalDataManagerInputProtocol?
    var remoteDataManager: VIPERRemoteDataManagerInputProtocol?
    
    deinit {
        print("Deinit \(self)")
    }
}

// MARK: - VIPERRemoteDataManagerOuputProtocol    

extension VIPERInteractor: VIPERRemoteDataManagerOutputProtocol {

}

// MARK: - VIPERLocalDataManagerOutputProtocol    

extension VIPERInteractor: VIPERLocalDataManagerOutputProtocol {

}
