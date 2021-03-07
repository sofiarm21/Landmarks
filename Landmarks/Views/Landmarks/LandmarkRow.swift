//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 4/3/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if (landmark.isFavorite) {
                Image(systemName: "star.fill")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.yellow/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: ModelData().landmarks[0])
            LandmarkRow(landmark: ModelData().landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}
