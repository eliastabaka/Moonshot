//
//  ContentView.swift
//  Moonshot
//
//  Created by Milosz Tabaka on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<200) { row in
                    NavigationLink {
                        Text("Row \(row)")
                    } label: {
                        Text("Row \(row)")
                    }
                }
                
                .navigationTitle("SwiftUI")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
