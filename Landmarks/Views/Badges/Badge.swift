//
//  Badge.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 14/3/21.
//

import SwiftUI

struct Badge: View {
    var rotationCount = 8
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                ForEach(0..<rotationCount) { i in
                    RotatedBadgeSymbol(angle: Angle(degrees: Double(i) / Double(rotationCount)) * 360.0)
                        .opacity(0.5)
                        .scaleEffect(1.0 / 4.0, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .position(x: geometry.size.width / 2, y: (3.0 / 4.0) * geometry.size.height / 2)
                }
            }
            .scaledToFit()
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
