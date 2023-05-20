//
//  AmiiboInfoRepository.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/05/20.
//

import Foundation

protocol AmiiboInfoRepository {
    func requestAmiiboInfo(name: String) async throws -> Amiibo
}
