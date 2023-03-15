//
//  User.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation

struct User: Identifiable {
    let id: UUID = UUID()
    let userName: String
    let photoID: String
}
