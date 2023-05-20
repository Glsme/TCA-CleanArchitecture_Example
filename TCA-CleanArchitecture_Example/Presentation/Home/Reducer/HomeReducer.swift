//
//  HomeReducer.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import SwiftUI

import ComposableArchitecture

struct HomeReducer: ReducerProtocol {
    var loadAmiiboListUseCase = DIContainer.makeLoadAmiiboListUseCase()
    
    struct State: Equatable {
        var amiibos: AmiiboList = []
    }
    
    enum Action {
        case loadAmiiboList
        case loadAmiiboListResponse(TaskResult<AmiiboList>)
    }
    
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .loadAmiiboList:
            return .task {
                await .loadAmiiboListResponse(TaskResult {
                    try await loadAmiiboListUseCase.excute()
                })
            }
        case let .loadAmiiboListResponse(.success(response)):
            state.amiibos.append(contentsOf: response)
            
            return .none
        case let .loadAmiiboListResponse(.failure(error)):
            print(error.localizedDescription)
            
            return .none
        }
    }
}
