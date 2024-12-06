//
//  MenuListRow.swift
//  Demo 1
//
//  Created by Sharjeel on 06/12/2024.
//

import SwiftUI

struct MenuListRow: View {
    var item:MenuItem
    var body: some View {
        
        
        
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:50)
                .cornerRadius(10)
            Text(item.name)
                .bold()
            Spacer()
            Text("$"+item.price)
        }.listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
            )    }
}

#Preview {
    MenuListRow(item: MenuItem(name: "test", price: "12.99", imageName: "onigiri"))
}
