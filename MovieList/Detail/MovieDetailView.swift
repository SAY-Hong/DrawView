//
//  MovieDetailView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/26.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: MovieData
    var body: some View {
        ZStack {
            Image(movie.detailMovieImage)
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fill)
            VStack {
                HStack(spacing: 300) {
                    MenuIcon()
                    SerachIcon()
                }
                Spacer()
                TrailerView()
                MovieReadMoreContentViews(detailMovieContent: movie.detailMovieContent)
               // ContentView() //ReadMore 버튼 클릭 시에만 띄워지게 하기.
            }
//            ContentView()
        }
    }
}

#Preview {
    MovieDetailView(movie: movies[0])
}
