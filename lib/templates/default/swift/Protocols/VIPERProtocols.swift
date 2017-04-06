//
//  VIPERProtocols.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation
import UIKit

protocol VIPERViewControllerProtocol: class {

    var presenter: VIPERPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
}

protocol VIPERWireFrameProtocol: class {
        
    static func createVIPERModule() -> UIViewController
    
    // PRESENTER -> WIREFRAME
}

protocol VIPERPresenterProtocol: class {
    weak var viewController: VIPERViewControllerProtocol? { get set }
    var interactor: VIPERInteractorInputProtocol? { get set }
    var wireFrame: VIPERWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
}

protocol VIPERInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
}

protocol VIPERInteractorInputProtocol: class {
    weak var presenter: VIPERInteractorOutputProtocol? { get set }
    var localDataManager: VIPERLocalDataManagerInputProtocol? { get set }
    var remoteDataManager: VIPERRemoteDataManagerInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
}

protocol VIPERRemoteDataManagerInputProtocol: class {
    weak var remoteRequestHandler: VIPERRemoteDataManagerOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
}

protocol VIPERRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol VIPERLocalDataManagerInputProtocol: class {
    weak var localRequestHandler: VIPERLocalDataManagerOutputProtocol? { get set }

     // INTERACTOR -> LOCALDATAMANAGER
}

protocol VIPERLocalDataManagerOutputProtocol: class {
    // LOCALDATAMANAGER -> INTERACTOR
}
