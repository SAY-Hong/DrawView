//
//  MovieTitleDate.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/24.
//

import SwiftUI

struct MovieTitleDateView: View {
    var body: some View {
        //TODO: 간격 조정
        VStack(alignment: .leading, spacing: 50) {
            Text("Docter Strange in the MultiVerse Of maddness")
                .modifier(MovieTitleText(size: 20))
            Text("JUL 8, 2022")
                .modifier(DateText(size: 20))
        }
        .padding()
        .frame(width: 190, height: 200)
    }
}

#Preview {
    MovieTitleDateView()
        .background {
            Color.black
        }
}
