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
            
           MenuListRow(item: item)
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
