//
//  MovieReadMoreContentViews.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/26.
//

import SwiftUI

struct MovieReadMoreContentViews: View {
    @State private var isViewed = true
    var detailMovieContent: String
    var body: some View {
        VStack(spacing: 10) {
            Text(detailMovieContent)
                .foregroundStyle(Color.white)
                .font(.custom(MontStyle().montSemiBold, size: 26))
                .lineLimit(isViewed ? 7 : 30)
                .frame(width: 350)
            Button(isViewed ? "Read Less" : "Read More") {
                isViewed.toggle()
            }
            .bold()
            .foregroundStyle(Color.red)
        }
    }
}

#Preview {
    MovieReadMoreContentViews(detailMovieContent: movies[0].detailMovieContent)
        .background(Color.black)
        
}
