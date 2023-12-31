//
//  MovieCellStruct.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/25.
//

import SwiftUI

struct MovieData: Codable, Identifiable {
    var id: String
    var movieTitle: String
    var movieData: String
    var movieImage: String
    var detailMovieImage: String
    var detailMovieContent: String
}

class MovieInformation: ObservableObject {
    @Published var movies: [MovieData]
    init(movies: [MovieData] = []) {
        self.movies = movies
    }
}


