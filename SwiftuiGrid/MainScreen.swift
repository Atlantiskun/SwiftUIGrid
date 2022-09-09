//
//  MainScreen.swift
//  SwiftuiGrid
//
//  Created by Дмитрий Болучевских on 09.09.2022.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        VStack {
            NavigationLink {
                GridWithVStack()
            } label: {
                Text("VStack")
                    .padding(30)
            }
            
            NavigationLink {
                GridWithLazyGrid()
            } label: {
                Text("LazyVGrid")
                    .padding(30)
            }
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}

extension View {
    
    @ViewBuilder
    func ItemCard(colors: [Color]) -> some View {
        (colors.randomElement() ?? .gray)
            .cornerRadius(20)
            .frame(minHeight: 80)
    }
}
