//
//  SerachIcon.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/24.
//

import SwiftUI

struct SerachIcon: View {
    var body: some View {
        Image(systemName: "magnifyingglass")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 35, height: 35)
            .foregroundStyle(Color.white)
    }
}

#Preview {
    SerachIcon()
        .padding()
        .background(Color.black)

}
