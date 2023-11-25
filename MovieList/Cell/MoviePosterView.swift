//
//  MoviePosterView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/24.
//

import SwiftUI

struct MoviePosterView: View {
    var movieName: String
    var body: some View {
        Image(movieName)
            .resizable()
            .frame(width: 150, height: 200)
            .aspectRatio(contentMode: .fit)
    }
}

//#Preview {
//    MoviePosterView(movie: movieInformation[0])
//}
