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
            // this one
                .resizable()
                .ignoresSafeArea()
            
//            or this one
                //.aspectRatio(contentMode: .fit)
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("button")
                Spacer()
                HStack{
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                        
                        
                    }
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                   
                }.foregroundColor(.white)
            }
        }
       
        
       
        
       
        
        
    }
}

#Preview {
    ContentView()
}
