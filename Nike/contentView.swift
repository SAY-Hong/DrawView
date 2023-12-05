//
//  detailView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/12/05.
//

import SwiftUI

struct contentView: View {
    var body: some View {
        ZStack {
            Color(red: 39 / 256, green: 33 / 256, blue: 33 / 256)
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                topItem()
                Text("Collections")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 30))
            }
        }
    }
}

#Preview {
    contentView()
}
