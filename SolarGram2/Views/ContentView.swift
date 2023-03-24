//
//  ContentView.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import SwiftUI

struct ContentView: View {
//    @State private var selection: Tab = .feed
    @State var selectedIndex = 0
    @EnvironmentObject var viewModel: PublicPostsViewModel
    let tabBarImageNames = ["house", "camera","photo", "person.fill"]
    let tabBarNames = ["Feed", "Camera", "Album", "My Profile"]
    @State var shouldShowCamera = false
    @State var shouldShowRoll = false
    
//    enum Tab {
//            case feed
//            case profile
//        }
    
    var body: some View {
//        TabView(selection: $selection) {
//            SolarFeed()
//                .tabItem {
//                    Label("Feed", systemImage: "house")
//                 }
//                .tag(Tab.feed)
//
//
//           MyProfile()
//                .tabItem {
//                    Label("Profile", systemImage: "person.crop.circle")
//                 }
//                .tag(Tab.profile)
            
        VStack{
            ZStack{
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldShowCamera, content: {
                        CameraPicker(viewModel: viewModel)
                    })
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldShowRoll, content: {
                        ImagePicker(viewModel: viewModel)
                    })
                
                switch selectedIndex {
                case 0:
                    SolarFeed()

                case 3:
                    MyProfile()
                    
                default:
                    MyProfile()
                }
            }
            
            Spacer()
            
            HStack{
                ForEach(0..<4) { num in
                    Button(action: {
                        
                        if num == 1 {
                            shouldShowCamera.toggle()
                            return
                        }

                        if num == 2 {
                            shouldShowRoll.toggle()
                            return
                        }
                        
                        selectedIndex = num
                    }, label: {
                        Spacer()
                        VStack{
                            Image(systemName: tabBarImageNames[num])
                                .font(.headline)
                                .foregroundColor(selectedIndex == num ? .blue : .black)
                            Text(tabBarNames[num])
                                .font(.caption)
                                .foregroundColor(selectedIndex == num ? .blue : .black)
                        }
                        
                        Spacer()
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PublicPostsViewModel())
    }
}
