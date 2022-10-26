//
//  ListLayout.swift
//  Moonshot
//
//  Created by Miłosz Tabaka on 26/10/2022.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                        HStack {
                            Text(mission.displayName)
                                .font(.title3)
                                .foregroundColor(.white)
                            Spacer()
                            Text(mission.formattedLaunchDate)
                                .font(.title3)
                                .foregroundColor(.white.opacity(0.5))
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .frame(maxWidth: .infinity)
                    }
            }
            .listRowBackground(Color.lightBackground)
        }
        .scrollContentBackground(.hidden)
    }
}

struct ListLayout_Previews: PreviewProvider {
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        ListLayout(astronauts: astronauts, missions: missions)
    }
}
