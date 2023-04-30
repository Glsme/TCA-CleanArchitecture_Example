//
//  DefaultAmiiboListRepository.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

final class DefaultAmiiboListRepository: AmiiboListRepository {
    func requestAmiiboList() async throws -> [Amiibo] {
        let url = URL(string: Endpoint.baseURL + "amiibo/")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(AmiiboListResponseDTO.self, from: data)
        
        return response.toDomain()
    }
}
