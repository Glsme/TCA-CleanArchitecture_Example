//
//  ContentView.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/24.
//

import SwiftUI

import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        AmiiboCardsView(store: Store(initialState: HomeReducer.State(), reducer: HomeReducer()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
