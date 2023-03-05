//
//  MyProfile.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import Foundation
import SwiftUI

struct MyProfile: View {
    
    private let threeColumnGrid = [
        GridItem(.flexible(minimum: 0)),
        GridItem(.flexible(minimum: 0)),
        GridItem(.flexible(minimum: 0)),
    ]
    
    var body: some View {
        VStack (alignment: .center){
            Image("Rachel")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(50)
            
            Text("Rachel Qian")
                .font(.title)
            
            
            ScrollView{
                LazyVGrid (columns: threeColumnGrid, alignment: .center){
                    ForEach (1..<6) {ix in
                        Image("rachelpicture\(ix)")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                            .clipped()
                            .aspectRatio(1, contentMode: .fit)
                    }
                }
            }
            
            
            Spacer()
        }
    }
}


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
        
    }
}

