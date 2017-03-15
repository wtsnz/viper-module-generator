//
//  VIPERWireFrame.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import UIKit

class VIPERWireFrame: VIPERWireFrameProtocol {
    
    class func createVIPERModule() -> UIViewController {

        let presenter: VIPERPresenterProtocol & VIPERInteractorOutputProtocol = VIPERPresenter()
        let interactor: VIPERInteractorInputProtocol & VIPERRemoteDataManagerOutputProtocol = VIPERInteractor()
        let localDataManager: VIPERLocalDataManagerInputProtocol = VIPERLocalDataManager()
        let remoteDataManager: VIPERRemoteDataManagerInputProtocol = VIPERRemoteDataManager()
        let wireFrame: VIPERWireFrameProtocol = VIPERWireFrame()
        
        view.presenter = presenter
        presenter.view = view
        presenter.wireFrame = wireFrame
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.localDatamanager = localDataManager
        interactor.remoteDatamanager = remoteDataManager
        remoteDataManager.remoteRequestHandler = interactor
        
        return navController
    }
    
    /*
    func presentNextScreen(from view: NextViewProtocol) {
        let nextViewController = NextWireFrame.createNextModule()
        
        if let sourceView = view as? UIViewController {
           sourceView.navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
    */
}
