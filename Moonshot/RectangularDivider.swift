//
//  RectangularDivider.swift
//  Moonshot
//
//  Created by Miłosz Tabaka on 26/10/2022.
//

import SwiftUI

struct RectangularDivider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct RectangularDivider_Previews: PreviewProvider {
    static var previews: some View {
        RectangularDivider()
    }
}
