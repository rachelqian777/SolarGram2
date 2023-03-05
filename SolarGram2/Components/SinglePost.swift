//
//  SinglePost.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import Foundation
import SwiftUI

struct SinglePost: View {
    var profile: String = "Rachel"
    var image: String = "rachelpicture1"
    var description: String = "Some travelling memories..."
    var name: String = "Rachel Qian"
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 10) {
            //profile header line
            PostHeader(profile:profile, name:name)
            
            //Main picture
            BigPictureSquare(image:image)
            
            //Description line & like icon
            PostDetails(description: description)
            
            Divider()
            Spacer()
        }
    }
}


struct SinglePost_Previews: PreviewProvider {
    static var previews: some View {
        SinglePost()
    }
}

struct PostHeader: View {
    var profile: String = "Rachel"
    var name: String = "Rachel Qian"
    
    var body: some View {
        HStack {
            HStack{
                Image(profile)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text(name)
                    .font(.body)
                    .fontWeight(.bold)
            }
            Spacer()
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 8)
        
    }
}

struct BigPictureSquare: View {
    var image: String = "rachelpicture1"
    var body: some View {
        ZStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode:.fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
        }
        .aspectRatio(1, contentMode: .fit)
        .clipped()
    }
}

struct PostDetails: View {
    var description:String = "Some traveling memories"
    var body: some View {
        VStack {
            HStack{
                Text(description)
                Spacer()
            }
            .padding(.leading)
            
            HStack {
                LikeButton(isSet: false)
                Spacer()
            }
            .padding(.leading)
        }
    }
}
