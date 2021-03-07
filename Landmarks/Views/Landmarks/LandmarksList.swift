//
//  LandmarksList.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 4/3/21.
//

import SwiftUI

struct LandmarksList: View {
    
    var landmarks: [Landmark]
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter({landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        })
    }
    
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Show favorites")
                })
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(
                        destination: LandmarkDetailView(landmark: landmark)
                    ){
                      LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Parks")
        }
    }
}

struct LandmarksList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksList(landmarks: ModelData().landmarks)
            .environmentObject(ModelData())
    }
}
