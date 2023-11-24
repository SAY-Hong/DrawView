//
//  movieTitleFont.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/24.
//
import SwiftUI

struct MovieTitleText: ViewModifier {
    var size: CGFloat
    init(size: CGFloat) {
        self.size = size
    }
    func body(content: Content) -> some View {
        content
            .font(.custom(MontStyle().montThin, size: size))
            .foregroundStyle(Color.white)
            
    }
}
