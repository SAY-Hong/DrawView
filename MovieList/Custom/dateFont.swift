//
//  dateDont.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/24.
//
import SwiftUI

struct DateText: ViewModifier {
    var size: CGFloat
    init(size: CGFloat) {
        self.size = size
    }
    func body(content: Content) -> some View {
        content
            .font(.custom(MontStyle().montSemiBold, size: size))
            .foregroundStyle(Color.red)
            
    }
}
