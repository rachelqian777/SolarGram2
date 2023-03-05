//
//  LikeButton.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import Foundation
import SwiftUI

struct LikeButton: View {
    @State var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Like", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .red : .gray)
        }
    }
}

struct LikeButton_Previews: PreviewProvider {
    static var previews: some View {
        LikeButton(isSet: true)
    }
}

