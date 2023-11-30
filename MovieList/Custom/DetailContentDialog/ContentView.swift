//
//  ContentView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/26.
//

import SwiftUI

struct ContentView: View {
//    let title: String
//    let message: String
//    let buttonTitle: String
    @Binding var isActive: Bool
    let action: () -> ()
    @State private var offset: CGFloat = 1000
    var body: some View {
        ZStack {
            Color.red
                .onTapGesture {
                    close()
                }
            VStack {
                MovieReadMoreContentViews(detailMovieContent: movies[0].detailMovieContent)
            }
            .padding()
            .fixedSize(horizontal: false, vertical: true)
            .padding(1)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 20)
            .padding(20)
            .offset(x: 0, y: offset)
            .onAppear {
                withAnimation(.spring()) {
                    offset = 0
                    isActive = true
                }
            }
        }
    }
    func close() {
        withAnimation(.spring()) {
            offset = 1000
        }
    }
}

#Preview {
    ContentView(isActive: .constant(true), action: {
        
    })
}
