//
//  VIPERWireframe.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import UIKit

class VIPERWireframe: VIPERWireframeProtocol {
    
    class func createVIPERModule() -> UIViewController {

        let viewController: VIPERViewControllerProtocol = VIPERViewController()
        let presenter: VIPERPresenterProtocol & VIPERInteractorOutputProtocol = VIPERPresenter()
        let interactor: VIPERInteractorInputProtocol & VIPERRemoteDataManagerOutputProtocol & VIPERLocalDataManagerOutputProtocol = VIPERInteractor()
        let localDataManager: VIPERLocalDataManagerInputProtocol = VIPERLocalDataManager()
        let remoteDataManager: VIPERRemoteDataManagerInputProtocol = VIPERRemoteDataManager()
        let wireframe: VIPERWireframeProtocol = VIPERWireframe()
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        presenter.wireframe = wireframe
        presenter.interactor = interactor
        interactor.presenter = presenter
        interactor.localDataManager = localDataManager
        interactor.remoteDataManager = remoteDataManager
        remoteDataManager.remoteRequestHandler = interactor
        
        return viewController as! UIViewController
    }
    
    /*
    func presentNextScreen(from view: NextViewProtocol) {
        let nextViewController = NextWireframe.createNextModule()
        
        if let sourceView = view as? UIViewController {
           sourceView.navigationController?.pushViewController(nextViewController, animated: true)
        }
    }
    */

    deinit {
        print("Deinit \(self)")
    }
}
