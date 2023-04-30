//
//  AmiiboCardsView.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import SwiftUI

import ComposableArchitecture

struct AmiiboCardsView: View {
    let gridItems = Array(repeating: GridItem(.flexible()), count: 2)
    let store: StoreOf<HomeReducer>
    
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 10) {
                    ForEach(viewStore.amiibos, id: \.self) { item in
                        CardRow(name: item.name)
                    }
//                    ForEach(0..<8) { index in
//                        CardRow()
//                    }
                }
                .padding(10)
            }
            .onAppear {
                viewStore.send(.loadAmiiboList)
            }
        }
    }
}

struct AmiiboCardView_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboCardsView(store: Store(initialState: HomeReducer.State(),
                                     reducer: HomeReducer()))
    }
}
