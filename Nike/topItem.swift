//
//  topItem.swift
//  DrawView
//
//  Created by 홍세희 on 2023/12/05.
//

import SwiftUI

struct topItem: View {
    var body: some View {
        HStack {
            VStack(alignment: .trailing, spacing: 3) {
                Capsule()
                    .fill(Color.black)
                    .frame(width: 23, height: 4)
                Capsule()
                    .fill(Color.black)
                    .frame(width: 15, height: 4)
            }
        }
    }
}

#Preview {
    topItem()
}
