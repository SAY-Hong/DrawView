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
                
            }
        }
    }
}

#Preview {
    MovieDetailView(movie: movies[0])
}
