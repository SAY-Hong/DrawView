//
//  ProductCellView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/18.
//

import SwiftUI

struct ProductCellView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("chair") //image
                .resizable()
                .frame(width: 200, height: 200)
            Text("Office") //kind
                .foregroundStyle(.gray)
            Text("Minimalist Chair") //productName
                .font(.system(size: 20))
                .bold()
            HStack {
                ForEach(0..<5) { _ in
                    Image(systemName: "star.fill")
                }.font(.system(size: 8))
            }
    
            HStack(spacing: 80) {
                Text("$120") //price
                    .font(.system(size: 25))
                
            }
        }
        .padding()
        
    }
}

#Preview {
    ProductCellView()
}
