//
//  SolarFeed.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import Foundation
import SwiftUI

struct SolarFeed: View {
    
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    var body: some View {
        List(viewModel.publicPosts) {post in
            PostRow(post: post)
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        .listStyle(.plain)
    }
    
}

struct SolarFeed_Previews: PreviewProvider {
    static var previews: some View {
        SolarFeed()
            .environmentObject(PublicPostsViewModel())
    }
}

