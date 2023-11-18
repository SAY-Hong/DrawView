//
//  CusNavigationBackButton.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/18.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: CusNavigationBackButton()){
                Text("Go to MyView")
            }
        }
    }
}

struct CusNavigationBackButton: View {
    @Environment(\.dismiss) private var dismiss // 이전 화면으로 돌아가게 하기
    var backButton : some View {
        Button{
            dismiss()
        } label: {
            HStack {
                Image(systemName: "chevron.left") // 화살표 Image
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.black)
                    .padding()
            }
        }
    }
    
    var body: some View {
        Button{
            dismiss()
        } label: {
            HStack {
                Image(systemName: "chevron.left") // 화살표 Image
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(Color.black)
                    .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
}


#Preview {
    ContentView2()
}
