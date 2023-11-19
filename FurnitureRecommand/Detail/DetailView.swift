//
//  DetailView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/18.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss // 이전 화면으로 돌아가게 하기
    var backButton : some View {
        Button{
            dismiss()
        } label: {
            HStack {
                Image(systemName: "arrow.backward") // 화살표 Image
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.black)
                    .padding()
            }
        }
    }
    var body: some View {
        VStack {
            Text("디테일 뷰")
        }
        .navigationTitle("Details")
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItemGroup(placement: .navigation) { //네비게이션 바 '왼쪽'에 버튼 위치
                backButton
            }
            ToolbarItemGroup { //네비게이션 바 '왼쪽'에 버튼 위치
                Image(systemName: "ellipsis")
            }
        }
    }
}

#Preview {
    DetailView()
}
