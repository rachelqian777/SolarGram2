//
//  PostList.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation
import SwiftUI

struct Post: Identifiable, Equatable {
    let id: UUID = UUID()
    let image: Image
    let description: String
    var isFavorite: Bool = false
    let author: User
}
