//
//  VIPERProtocols.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation
import UIKit

protocol VIPERViewProtocol: class {

    var presenter: VIPERPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
}

protocol VIPERWireFrameProtocol: class {
        
    static func createVIPERModule() -> UIViewController
    
    // PRESENTER -> WIREFRAME
}

protocol VIPERPresenterProtocol: class {
    var view: VIPERViewProtocol? { get set }
    var interactor: VIPERInteractorInputProtocol? { get set }
    var wireFrame: VIPERWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
}

protocol VIPERInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
}

protocol VIPERInteractorInputProtocol: class {
    var presenter: VIPERInteractorOutputProtocol? { get set }
    var localDataManager: VIPERLocalDataManagerInputProtocol? { get set }
    var remoteDataManager: VIPERRemoteDataManagerInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
}

protocol VIPERRemoteDataManagerInputProtocol: class {
    var remoteRequestHandler: VIPERRemoteDataManagerOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
}

protocol VIPERRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol VIPERLocalDataManagerInputProtocol: class {
    var localRequestHandler: VIPERLocalDataManagerOutputProtocol? { get set }

     // INTERACTOR -> LOCALDATAMANAGER
}

protocol VIPERLocalDataManagerOutputProtocol: class {
    // LOCALDATAMANAGER -> INTERACTOR
}
