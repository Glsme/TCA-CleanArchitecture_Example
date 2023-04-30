//
//  CardRow.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import SwiftUI

struct CardRow: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 4)
                .foregroundColor(.blue)
                .aspectRatio(1, contentMode: .fit)
                .padding(6)
            Spacer()
            Text("이름")
            Spacer()
        }
        .aspectRatio(CGSize(width: 1, height: 1.25), contentMode: .fill)
        .background(Color.red)
        .cornerRadius(8)
        .shadow(color: .gray, radius: 4, x: 0, y: 4)
    }
}

struct CardRow_Previews: PreviewProvider {
    static var previews: some View {
        CardRow()
    }
}
