//
//  ContentView.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/24.
//

import SwiftUI

import ComposableArchitecture

struct ContentView: View {
    let container: DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
    
    var body: some View {
        AmiiboCardsView()
            .environment(\.injected, container)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(container: DIContainer(appStore: AppStore(),
                                           interfacers: DIContainer.Interfacers.stub))
    }
}
