//
//  ContentView.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .feed
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    enum Tab {
            case feed
            case profile
        }
    
    var body: some View {
        TabView(selection: $selection) {
            SolarFeed()
                .tabItem {
                    Label("Photos", systemImage: "photo.stack")
                 }
                .tag(Tab.feed)
            
           MyProfile()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                 }
                .tag(Tab.profile)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PublicPostsViewModel())
    }
}
