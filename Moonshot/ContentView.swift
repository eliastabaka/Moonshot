//
//  ContentView.swift
//  Moonshot
//
//  Created by Milosz Tabaka on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            Image("parrot")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.9)
                .frame(width: geo.size.width, height: geo.size.height)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
