//
//  SolarFeed.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import Foundation
import SwiftUI

struct SolarFeed: View {
    var body: some View {
        ScrollView{
            SinglePost(profile:"Rachel", image: "rachelpicture1", description: "Some traveling memories...", name: "Rachel Qian")
            SinglePost(profile:"Rachel", image: "rachelpicture2", description: "Some more traveling memories...", name: "Rachel Qian")
            SinglePost(profile:"Jane", image: "picture6", description: "Travel painting", name: "Jane M.")
            SinglePost(profile:"Iris", image: "picture7", description: "Iris's painting progress", name: "Iris K.")
            SinglePost(profile:"Rachel", image: "rachelpicture3", description: "Mountains sunset", name: "Rachel Qian")
            SinglePost(profile:"Rachel", image: "rachelpicture4", description: "More  mountains", name: "Rachel Qian")
        }
    }
}


struct SolarFeed_Previews: PreviewProvider {
    static var previews: some View {
        SolarFeed()
    }
}

