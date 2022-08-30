//
//  ContentView.swift
//  Moonshot
//
//  Created by Milosz Tabaka on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: layout) {
                ForEach(0..<300) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
