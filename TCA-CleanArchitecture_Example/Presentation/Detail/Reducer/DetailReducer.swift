//
//  DetailReducer.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/05/20.
//

import Foundation

import ComposableArchitecture

struct DetailReducer: ReducerProtocol {
    struct State: Equatable {
        var amiiboInfo: Amiibo = .init(image: "", name: "")
    }
    
    enum Action {
        case loadAmiiboInfo
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .loadAmiiboInfo:
            return .none
        }
    }
}
