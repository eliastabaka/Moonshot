//
//  Mission.swift
//  Moonshot
//
//  Created by Milosz Tabaka on 30/08/2022.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
}
