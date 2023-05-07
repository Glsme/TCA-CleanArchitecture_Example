//
//  AppStore.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/05/04.
//

import Foundation

import ComposableArchitecture

struct AppStore {
    var homeReducer = Store(initialState: HomeReducer.State(), reducer: HomeReducer())
}
