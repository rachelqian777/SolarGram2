//
//  PostList.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation

struct Post: Identifiable {
    let id: UUID = UUID()
    let photoID: String
    let description: String
    var isFavorite: Bool = false
    let author: User
}
