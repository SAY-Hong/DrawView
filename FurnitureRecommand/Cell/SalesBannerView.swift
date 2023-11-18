//
//  SalesBannerView.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/18.
//

import SwiftUI

struct SalesBannerView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                    .fill(Color.black)
                    .frame(height: 150)
                HStack(spacing: 100) {
                    VStack(alignment: .leading) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 18)
                                .fill(Color.yellow)
                                .frame(width: 80, height: 40)
                            Text("20% Off")
                                .font(.system(size: 15))
                        }
                        VStack(alignment: .leading) {
                            Text("Best deals on")
                            Text("Chair")
                        }
                        .foregroundStyle(Color.white)
                        .bold()
                        
                        Text("")
                        
                        NavigationLink {
                            DetailView()
                        } label: {
                            HStack {
                                Text("Check it out ")
                                Image(systemName: "arrow.forward")
                            }
                            .foregroundStyle(Color.white)
                            .font(.system(size: 10))
                        }
                    }
                    
                    Image("chair")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
            }
        }
    }
}

#Preview {
    SalesBannerView()
}
