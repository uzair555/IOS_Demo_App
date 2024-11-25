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
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack{
                Image("Nigrafalls")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .cornerRadius(15)
                    
                HStack{
                    
                    Text("Nigrafalls")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.fill")
                        }
                        Text("(Reviews 361)")
                       
                    }.foregroundColor(.orange)
                        .font(.caption)
                }
                
               
                
                Text("Come visits the falls for an experiance of a life time")
                HStack{
                    Spacer()
                    Image(systemName: "binoculars.fill")
                    Image(systemName: "fork.knife")
                }.foregroundColor(.gray)
                    .font(.caption)
                
            }
            .padding()
               .background(Rectangle().foregroundColor(.white))
               .cornerRadius(15)
               .shadow(radius: 15)
                .padding()
        }
        
       
        
       
        
        
    }
}

#Preview {
    ContentView()
}
