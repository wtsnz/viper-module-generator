//
//  VIPERLocalDataManager.swift
//
//  Created by AUTHOR.
//  Copyright © YEAR COMPANY. All rights reserved.
//

import Foundation

class VIPERLocalDataManager: VIPERLocalDataManagerInputProtocol {

	weak var localRequestHandler: VIPERLocalDataManagerOutputProtocol?

    init() {}


    deinit {
        print("Deinit \(self)")
    }
}