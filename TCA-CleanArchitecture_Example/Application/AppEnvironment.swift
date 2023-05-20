//
//  AppEnvironment.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/05/04.
//

import Foundation

struct AppEnvironment {
    let container: DIContainer
}

extension AppEnvironment {
    static func bootStrap() -> AppEnvironment {
        let appStore = AppStore()
        let diContainer = DIContainer(appStore: appStore)
        
        return AppEnvironment(container: diContainer)
    }
}
