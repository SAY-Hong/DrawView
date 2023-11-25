//
//  HomeView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/24.
//

import SwiftUI

var movies: [MovieData] = loadJson("movieInfo.json")

struct HomeView: View {
    @StateObject var movieInfo: MovieInformation = MovieInformation(movies: movies)
    var body: some View {
        ZStack {
            Color(red: 28 / 255, green: 26 / 255, blue: 29 / 255 ).ignoresSafeArea()
            VStack(spacing: 30) {
                //상단 제목 및 아이콘
                HStack(spacing: 100){
                    MenuIcon()
                    Text("MOVIES")
                        .frame(width: 100, height: 50)
                        .modifier(HomeTitleText(size: 20))
                    SerachIcon()
                }
                ScrollView {
                    VStack(spacing: 15) {
                        ForEach(0..<movieInfo.movies.count, id: \.self) { index in
                            MovieListCellView(movie: movies[index])
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
