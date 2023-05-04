//
//  DIContainer.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

final class DIContainer {
    static let shared = DIContainer()
}

//MARK: - UseCase

extension DIContainer {
    func makeLoadAmiiboListUseCase() -> LoadAmiiboListUseCase {
        return DefaultLoadAmiiboListUseCase(amiiboListRepository: makeAmiiboListRepository())
    }
}

//MARK: - Repository

extension DIContainer {
    func makeAmiiboListRepository() -> AmiiboListRepository {
        return DefaultAmiiboListRepository()
    }
}
