//
//  ContentView.swift
//  Demo 1
//
//  Created by Sharjeel on 21/11/2024.
//

import SwiftUI

struct MenuView: View {
 
   @State var menuItem:[MenuItem]=[MenuItem]()
    
          var dataService=DataService()
    
    var body: some View {
        List(menuItem){item in
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
                )
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
        .onAppear(){
            // call the data
            menuItem = dataService.getData()
        }
        
        
    }
    
  
}

#Preview {
    MenuView()
}
