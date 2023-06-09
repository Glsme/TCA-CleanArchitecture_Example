//
//  Amiibo.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import Foundation

struct Amiibo: Codable, Hashable {
    let image: String
    let name: String
}

typealias AmiiboList = [Amiibo]
