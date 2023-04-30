//
//  CardRow.swift
//  TCA-CleanArchitecture_Example
//
//  Created by Seokjune Hong on 2023/04/30.
//

import SwiftUI

import Kingfisher

struct CardRow: View {
    let name: String
    let imageURL: String
    
    var body: some View {
        VStack {
            ZStack {
                Spacer()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                KFImage(URL(string: imageURL)!)
                    .resizable()
                    .scaledToFit()
    //                .aspectRatio(CGSize(width: 1, height: 1.15), contentMode: .fit)
                    .padding(6)
            }
            
            Spacer()
            Text(name)
                .font(.footnote)
            Spacer()
        }
        .aspectRatio(CGSize(width: 1, height: 1.28), contentMode: .fill)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: .gray, radius: 4, x: 0, y: 4)
    }
}

struct CardRow_Previews: PreviewProvider {
    static var previews: some View {
        CardRow(name: "Mario", imageURL: "https://raw.githubusercontent.com/N3evin/AmiiboAPI/master/images/icon_00000000-00000002.png")
    }
}
