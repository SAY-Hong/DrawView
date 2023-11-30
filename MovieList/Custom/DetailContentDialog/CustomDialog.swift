//
//  CustomDialog.swift
//  DrawView
//
//  Created by 홍세희 on 2023/11/26.
//

import SwiftUI

struct CustomDialog: View {
    @State var isActive: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Button(action: { isActive = true }, label: {
                    Text("Button")
                })
            }
            
            if isActive {
                ContentView(isActive: .constant(true), action: {
                    
                })
            }
        }
    }
}

#Preview {
    CustomDialog()
}
