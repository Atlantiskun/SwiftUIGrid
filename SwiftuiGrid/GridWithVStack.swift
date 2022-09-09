//
//  GridWithVStack.swift
//  SwiftuiGrid
//
//  Created by Дмитрий Болучевских on 09.09.2022.
//

import SwiftUI

struct GridWithVStack: View {
    
    let colors: [Color] = [ .blue, .green, .orange, .purple, .red, .yellow ]
    var rows = 80
    var columns = 3

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20) {
                ForEach(0..<rows, id: \.self) { row in
                    if row % 5 == 0 {
                        ItemCard(colors: colors)
                            .frame(height: 180)
                    } else {
                        HStack(spacing: 20) {
                            ForEach(0..<columns, id: \.self) { col in
                                ItemCard(colors: colors)
                                    .frame(width: 110, height: 110)
                                    .cornerRadius(20)
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GridWithVStack()
    }
}
