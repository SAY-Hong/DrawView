//
//  FurnitureContentView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/18.
//

import SwiftUI

struct FurnitureContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    ProfileAndTitleView()
                    //TODO: searchbar 넣기
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .fill(Color.gray)
                        .frame(height: 60)
                    SalesBannerView()
                    //TODO: 버튼 칸 만들기
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .fill(Color.yellow)
                        .frame(height: 60)
                    
                    HStack(spacing: 180) {
                        Text("Best Seller")
                            .font(.system(size: 25))
                        Button(action: {}, label: {
                            Text("View all")
                                .foregroundStyle(.gray)
                        })
                    }
                    
                    //MARK: 스크롤뷰
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(0..<5) { _ in
                                ProductCellView()
                            }
                        }
                    }
                    .frame(maxHeight: .infinity)
                }
                .padding()
            }
        }
        

    }
}

#Preview {
    FurnitureContentView()
}
