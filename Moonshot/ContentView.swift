//
//  ContentView.swift
//  Moonshot
//
//  Created by Milosz Tabaka on 30/08/2022.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    @State private var showingGrid = true
    @State private var toggleMessage = "List View"
    
    var body: some View {
        NavigationView {
            Group {
                if showingGrid {
                    GridLayout(astronauts: astronauts, missions: missions)
                } else {
                    ListLayout(astronauts: astronauts, missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                        Button {
                            showingGrid.toggle()
                            toggleMessage = showingGrid ? "List View" : "Grid View"
                        } label: {
                            Text(toggleMessage)
                                .foregroundColor(.white)
                                .font(.title3)
                        }
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
