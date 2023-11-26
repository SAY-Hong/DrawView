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
//    let action: () -> ()
    @State private var offset: CGFloat = 2000
    var body: some View {
        ZStack {
//            Color()
//            .onTapGesture {
//                close()
//            }
            VStack {
//                Text(title)
//                    .font(.title2)
//                    .bold()
//                    .padding()
//                Text(message)
//                    .font(.body)
                MovieReadMoreContentViews(detailMovieContent: movies[0].detailMovieContent)
//                Button(action: { action() }, label: {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 20)
//                            .foregroundStyle(Color.red)
//                        Text(buttonTitle)
//                            .font(.system(size: 20, weight: .bold))
//                            .foregroundStyle(Color.white)
//                            .padding()
//                    }
//                    .padding()
//                })
                
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 20)
            .padding(20)
            .offset(x: 0, y: offset)
            .onAppear {
                withAnimation(.spring()) {
                    offset = 0
                }
            }
        }
    }
    func close() {
        withAnimation(.spring()) {
            offset = 2000
        }
    }
}

#Preview {
    ContentView()
}
