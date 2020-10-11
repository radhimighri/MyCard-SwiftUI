//
//  InfoView.swift
//  RadhiCard
//
//  Created by Radhi Mighri on 15/07/2020.
//  Copyright © 2020 Radhi Mighri. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text : String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50.0)
            .foregroundColor(.white)
            .overlay(HStack {
                
                Image(systemName: imageName)
                    .foregroundColor(.green)
                
                Text(text)
                
            })
            
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill") // just initialisers to create the first preview , it will be replaced when we call it
            .previewLayout(.sizeThatFits) // because its just a single compinent we can display it in a small part we dont need to use the entire simulator screen
    }
}
