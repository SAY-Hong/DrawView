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
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var backButton : some View {  // <-- 👀 커스텀 버튼
        Button{
            self.presentationMode.wrappedValue.dismiss()
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
        VStack {
            Text("MyView")
            
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Dismiss")
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)  // <-- 👀 버튼을 등록한다.
    }
    
}

#Preview {
    ContentView2()
}
