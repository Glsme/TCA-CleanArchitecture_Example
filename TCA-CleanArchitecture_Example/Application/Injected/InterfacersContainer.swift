//
//  InterfacersContainer.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/05/07.
//

import Foundation

extension DIContainer {
    struct Interfacers {
        let amiiboListRepository: AmiiboListRepository
        
        init(amiiboListRepository: AmiiboListRepository) {
            self.amiiboListRepository = amiiboListRepository
        }
        
        static var stub: Self {
            .init(amiiboListRepository: DefaultAmiiboListRepository())
        }
    }
}
