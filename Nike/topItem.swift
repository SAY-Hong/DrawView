//
//  topItem.swift
//  DrawView
//
//  Created by 홍세희 on 2023/12/05.
//

import SwiftUI

struct topItem: View {
    var body: some View {
        HStack(spacing: 240) {
            VStack {
                Image("roofi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
            }
            VStack(alignment: .trailing, spacing: 5) {
                Capsule()
                    .fill(Color.white)
                    .frame(width: 23, height: 4)
                Capsule()
                    .fill(Color.white)
                    .frame(width: 15, height: 4)
            }
        }
    }
}

#Preview {
    topItem()
}
