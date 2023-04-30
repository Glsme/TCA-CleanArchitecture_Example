//
//  LoadAmiiboListUseCase.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

protocol LoadAmiiboListUseCase {
    func excute() async throws -> [Amiibo]
}

final class DefaultLoadAmiiboListUseCase: LoadAmiiboListUseCase {
    private let amiiboListRepository: AmiiboListRepository
    
    init(amiiboListRepository: AmiiboListRepository) {
        self.amiiboListRepository = amiiboListRepository
    }
    
    func excute() async throws -> [Amiibo] {
        return try await amiiboListRepository.requestAmiiboList()
    }
}
