//
//  BigSquarePicture.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import SwiftUI

struct SquarePicture: View {
    
    var image: Image
    
    init(_ image: Image) {
        self.image = image
    }
    
    var body: some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay {
                image
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
    }
}

struct SquarePicture_Previews: PreviewProvider {
    static var previews: some View {
        SquarePicture(Image("Iris"))
    }
}
