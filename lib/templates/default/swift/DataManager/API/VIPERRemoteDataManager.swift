//
//  VIPERRemoteDataManager.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERRemoteDataManager: VIPERRemoteDataManagerInputProtocol {

    weak var remoteRequestHandler: VIPERRemoteDataManagerOutputProtocol?

    init() {}


   	deinit {
        print("Deinit \(self)")
    }
}