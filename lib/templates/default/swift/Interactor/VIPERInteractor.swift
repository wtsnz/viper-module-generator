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

    var presenter: VIPERInteractorOutputProtocol?
    var localDataManager: VIPERLocalDataManagerInputProtocol?
    var remoteDataManager: VIPERRemoteDataManagerInputProtocol?
        
}

// MARK: - VIPERRemoteDataManagerOuputProtocol    

extension VIPERInteractor: VIPERRemoteDataManagerOutputProtocol {

}

// MARK: - VIPERLocalDataManagerOutputProtocol    

extension VIPERInteractor: VIPERLocalDataManagerOutputProtocol {

}
