//
//  CircleImage.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 4/3/21.
//

import SwiftUI

struct CircleImage: View {
    var parkImage: Image
    var body: some View {
        VStack{
            parkImage
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(
                            Color.white, lineWidth: 3
                        )
                )
                .shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(parkImage: ModelData().landmarks[0].image)
    }
}
