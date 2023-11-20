//
//  DetailView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/18.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss // 이전 화면으로 돌아가게 하기
    
    @State private var currentIndex = 0
    private let colors: [Color] = [.gray, .black, .yellow, .indigo]
    
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
        VStack(alignment: .leading) {
            TabView(selection: $currentIndex) {
                ForEach(0..<colors.count, id: \.self) { index in
                    ZStack {
                        colors[index]
                        Image("chair")
                    }
                }
            }
            .frame(width: 350,height: 400)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            

            Text("Office") //kind
                .foregroundStyle(.gray)
            
            HStack {
                Text("Minimalist Chair") //productName
                    .font(.system(size: 30))
                    .bold()
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.gray)
                        .frame(width: 40, height: 40)
                
                    Button(action: {}, label: {
                        Image(systemName: "handbag")
                            
                    })
                }
            }
           
            
            HStack {
                ForEach(0..<5) { _ in
                    Image(systemName: "star.fill")
                }.font(.system(size: 8))
            }
        }
        .padding()
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
