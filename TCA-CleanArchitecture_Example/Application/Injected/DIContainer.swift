//
//  DIContainer.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import SwiftUI

import ComposableArchitecture

struct DIContainer: EnvironmentKey {
    let appStore: AppStore
//    let interfacers: Interfacers
    
    init(appStore: AppStore) {
        self.appStore = appStore
    }
    
    static var defaultValue: Self { Self.default }
    
    private static let `default` = Self(appStore: AppStore())
}

extension EnvironmentValues {
    var injected: DIContainer {
        get { self[DIContainer.self] }
        set { self[DIContainer.self] = newValue }
    }
}



//MARK: - UseCase

extension DIContainer {
    static func makeLoadAmiiboListUseCase() -> LoadAmiiboListUseCase {
        return DefaultLoadAmiiboListUseCase(amiiboListRepository: makeAmiiboListRepository())
    }
}

//MARK: - Repository

extension DIContainer {
    static func makeAmiiboListRepository() -> AmiiboListRepository {
        return DefaultAmiiboListRepository()
    }
}
