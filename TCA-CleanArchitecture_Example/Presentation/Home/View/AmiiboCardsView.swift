//
//  AmiiboCardsView.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import SwiftUI

import ComposableArchitecture

struct AmiiboCardsView: View {
    @Environment(\.injected) var container: DIContainer
    let gridItems = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        WithViewStore(container.appStore.homeReducer, observe: { $0 }) { viewStore in
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: gridItems, spacing: 20) {
                        ForEach(viewStore.amiibos, id: \.self) { item in
                            NavigationLink {
                                DetailView()
                            } label: {
                                CardRow(name: item.name, imageURL: item.image)
                            }
                        }
                    }
                    .padding(20)
                }
                .navigationTitle("Amiibo")
            }
            .onAppear {
                viewStore.send(.loadAmiiboList)
            }
        }
    }
}

struct AmiiboCardView_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboCardsView()
    }
}
