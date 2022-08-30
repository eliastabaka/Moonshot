//
//  ContentView.swift
//  Moonshot
//
//  Created by Milosz Tabaka on 30/08/2022.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    var body: some View {
        Button("Decode data") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "Taylor Swift Avenue",
                    "city": "Nashvile"
                }
            }
            """
            let data = Data(input.utf8)
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.name)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
