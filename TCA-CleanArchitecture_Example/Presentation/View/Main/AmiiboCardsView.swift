//
//  AmiiboCardView.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import SwiftUI

struct AmiiboCardView: View {
    let gridItems = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItems, spacing: 10) {
                ForEach(0..<8) { index in
                    CardRow()
                }
            }
            .padding(10)
        }
    }
}

struct AmiiboCardView_Previews: PreviewProvider {
    static var previews: some View {
        AmiiboCardView()
    }
}
