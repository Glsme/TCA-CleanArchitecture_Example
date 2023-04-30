//
//  AmiiboListRepository.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

protocol AmiiboListRepository {
    func requestAmiiboList() async throws -> [Amiibo]
}
