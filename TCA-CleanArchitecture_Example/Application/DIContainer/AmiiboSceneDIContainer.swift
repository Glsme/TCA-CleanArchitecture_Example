//
//  AmiiboSceneDIContainer.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

final class AmiiboSceneDIContainer {
    static let shared = AmiiboSceneDIContainer()
}

//MARK: - UseCase

extension AmiiboSceneDIContainer {
    func makeLoadAmiiboListUseCase() -> LoadAmiiboListUseCase {
        return DefaultLoadAmiiboListUseCase(amiiboListRepository: makeAmiiboListRepository())
    }
}

//MARK: - Repository

extension AmiiboSceneDIContainer {
    func makeAmiiboListRepository() -> AmiiboListRepository {
        return DefaultAmiiboListRepository()
    }
}
