//
//  guitar.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/04.
//

import SwiftUI

struct guitar: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: ContentView()) {
                Text("Button")
                    .foregroundStyle(Color.white)
                    .bold()
                    .frame(width: 330)
                    .padding(20)
                    .background( // () 안에 다 때려박을 수 있네..
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(Color.orange) //MARK: fill() - 버튼 색상 바꾸기
                        )
            }
        }
    }
}

#Preview {
    guitar()
}
