//
//  ContentView.swift
//  Demo 1
//
//  Created by Sharjeel on 21/11/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background-cloth")
                .aspectRatio(contentMode: .fit)
            VStack{
                Image("logo")
                
                HStack(spacing: 40){
                    Image("card2")
                   
                    Image("card3")
                }.padding(40.0)
                Image("button")
                
                HStack(spacing: 80){
                    VStack{
                        Text("Player")
                        Text("0")
                        
                    }
                    VStack{
                        
                        Text("CPU")
                        Text("0")
                    }
                   
                }.foregroundColor(.white)
            }
        }
       
        
       
        
       
        
        
    }
}

#Preview {
    ContentView()
}
