//
//  MovieReadMoreContentViews.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/26.
//

import SwiftUI

struct MovieReadMoreContentViews: View {
    @State private var isViewed = true
    @State private var showModal = false
    var detailMovieContent: String
    var body: some View {
        VStack(spacing: 10) {
            Text(detailMovieContent)
                .foregroundStyle(Color.black)
                .font(.custom(MontStyle().montSemiBold, size: 26))
                .lineLimit(7)
                .frame(width: 350)
                .sheet(isPresented: $showModal, content: {
                    Text("StoryLine")
                    Text(detailMovieContent)
                        .font(.custom(MontStyle().montSemiBold, size: 28))
                })
            Button(isViewed ? "Read More" : "Read Less") {
                isViewed.toggle()
                showModal.toggle()
            }
            .bold()
            .foregroundStyle(Color.red)
        }
    }
}

#Preview {
    MovieReadMoreContentViews(detailMovieContent: movies[0].detailMovieContent)
        .background(Color.gray)
        
}
