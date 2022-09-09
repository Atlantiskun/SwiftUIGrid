//
//  GridWithLazyGrid.swift
//  SwiftuiGrid
//
//  Created by Дмитрий Болучевских on 09.09.2022.
//

import SwiftUI

struct GridWithLazyGrid: View {
    
    let colors: [Color] = [ .blue, .green, .orange, .purple, .red, .yellow ]
    var rows = 80
    var columns = 3
    var rowBeetweenBanners = 4
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                ForEach(0..<rows, id: \.self) { _ in
                    ItemCard(colors: colors)
                        .frame(minHeight: 180)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        ForEach(0..<(rowBeetweenBanners * columns), id: \.self) { _ in
                            ItemCard(colors: colors)
                                .frame(width: 110, height: 110)
                        }
                    }
                }
            }
        }
    }
}

struct GridWithLazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        GridWithLazyGrid()
    }
}
