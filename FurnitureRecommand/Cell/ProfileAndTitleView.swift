//
//  ProfileAndTitleView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/18.
//

import SwiftUI

struct ProfileAndTitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Best Furniture For")
                Text("Your Room")
            }
            .font(.system(size: 28))
            .bold()
            Spacer()
            Image("roofi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ProfileAndTitleView()
}
