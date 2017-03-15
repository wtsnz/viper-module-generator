//
//  VIPERWireFrame.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import UIKit

class VIPERWireFrame: VIPERWireFrameProtocol {
    
    class func createVIPERModule() -> UIViewController {

        let presenter: PostListPresenterProtocol & PostListInteractorOutputProtocol = PostListPresenter()
        let interactor: PostListInteractorInputProtocol & PostListRemoteDataManagerOutputProtocol = PostListInteractor()
        let localDataManager: PostListLocalDataManagerInputProtocol = PostListLocalDataManager()
        let remoteDataManager: PostListRemoteDataManagerInputProtocol = PostListRemoteDataManager()
        let wireFrame: PostListWireFrameProtocol = PostListWireFrame()
        
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
