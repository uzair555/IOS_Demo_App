//
//  ContentView.swift
//  Demo 1
//
//  Created by Sharjeel on 21/11/2024.
//

import SwiftUI

struct MenuView: View {
  @State var playerCard = "card7"
   @State var cpuCard = "card14"
    
    @State var playerScore = 0
   @State var cpuScore = 0
    
    
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                Spacer()
                HStack{
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                        
                    }
                    VStack{
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                   
                }.foregroundColor(.white)
            }
        }
       
        
       
        
       
        
        
    }
    
    func deal(){
       //randomize player card
        let playerCardValue=Int.random(in:2...14)
        playerCard = "card"+String(playerCardValue)
        
        //randomize cpu card
        let cpuCardValue=Int.random(in: 2...14)
        cpuCard = "card"+String(cpuCardValue)
        
        //score update
        if(playerCardValue>cpuCardValue){
            playerScore += 1
        }else if(playerCardValue<cpuCardValue){
            cpuScore += 1
        }
        
    }
}

#Preview {
    MenuView()
}
