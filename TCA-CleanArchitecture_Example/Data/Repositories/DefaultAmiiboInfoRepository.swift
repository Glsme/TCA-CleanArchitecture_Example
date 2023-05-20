//
//  DefaultAmiiboInfoRepository.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/05/20.
//

import Foundation

final class DefaultAmiiboInfoRepository: AmiiboInfoRepository {
    func requestAmiiboInfo(name: String) async throws -> Amiibo {
        let url = URL(string: Endpoint.baseURL + "amiibo/?name=\(name)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(AmiiboResponseDTO.self, from: data)
        
        return response.toDomain()
    }
}
