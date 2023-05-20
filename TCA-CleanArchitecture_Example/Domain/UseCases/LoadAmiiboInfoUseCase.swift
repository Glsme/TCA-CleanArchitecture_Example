//
//  LoadAmiiboInfoUseCase.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/05/20.
//

import Foundation

protocol LoadAmiiboInfoUseCase {
    func excute(name: String) async throws -> Amiibo
}

final class DefaultLoadAmiiboInfoUseCase: LoadAmiiboInfoUseCase {
    private let amiiboInfoRepository: AmiiboInfoRepository
    
    init(amiiboInfoRepository: AmiiboInfoRepository) {
        self.amiiboInfoRepository = amiiboInfoRepository
    }
    
    func excute(name: String) async throws -> Amiibo {
        return try await amiiboInfoRepository.requestAmiiboInfo(name: name)
    }
}
