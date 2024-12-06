//
//  CustomButton.swift
//  Demo 1
//
//  Created by Sharjeel on 06/12/2024.
//

import SwiftUI

struct CustomButton: View {
    var buttonText:String
    var body: some View {
        Button {
        
        } label: {
            Text(buttonText)
                .padding()
                .border(.blue)
                .cornerRadius(3.0)
                
        }

    }
}

#Preview {
    CustomButton(buttonText:"Custom Button")
}
