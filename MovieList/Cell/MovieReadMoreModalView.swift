//
//  MovieReadMoreModalView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/27.
//

import SwiftUI

struct MovieReadMoreModalView: View {
//    @State private var isViewed = true
//    @State private var showModal = false
    var detailMovieContent: String
    var body: some View {
        VStack(spacing: 10) {
            Text(detailMovieContent)
                .foregroundStyle(Color.white)
                .font(.custom(MontStyle().montSemiBold, size: 26))
                .frame(width: 350)
        }
    }
}

#Preview {
    MovieReadMoreModalView(detailMovieContent: movies[0].detailMovieContent)
}
