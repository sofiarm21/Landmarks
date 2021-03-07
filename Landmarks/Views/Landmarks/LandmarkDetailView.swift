//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 4/3/21.
//

import SwiftUI

struct LandmarkDetailView: View {
    @EnvironmentObject var modelData: ModelData
    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    var landmark: Landmark
    @State private var addToFavorite = false
    var body: some View {
        ScrollView {
            MapView(parkCoordinates: landmark.locationCoordinate)
                .frame(height:300)
            CircleImage(parkImage: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
          
            VStack(alignment: .leading) {
                HStack{
                    Text(landmark.park)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                   
                }
                HStack {
                    Text(landmark.name)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.gray)
                Divider()
                Text(landmark.description)
                    .font(.headline)
            }
            .padding()
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        
        }
        .ignoresSafeArea()
    }
    
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(landmark: ModelData().landmarks[0])
    }
}
