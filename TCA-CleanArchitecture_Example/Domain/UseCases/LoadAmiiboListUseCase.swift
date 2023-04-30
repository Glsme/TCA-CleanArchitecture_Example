//
//  LoadAmiiboListUseCase.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

protocol LoadAmiiboListUseCase {
    func excute() async throws -> AmiiboList
}

final class DefaultLoadAmiiboListUseCase: LoadAmiiboListUseCase {
    private let amiiboListRepository: AmiiboListRepository
    
    init(amiiboListRepository: AmiiboListRepository) {
        self.amiiboListRepository = amiiboListRepository
    }
    
    func excute() async throws -> AmiiboList {
        return try await amiiboListRepository.requestAmiiboList()
    }
}
