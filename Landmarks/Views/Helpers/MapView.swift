//
//  MapView.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 4/3/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var parkCoordinates: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(parkCoordinates)
                
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
            region = MKCoordinateRegion(
                center: parkCoordinates,
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(parkCoordinates: ModelData().landmarks[0].locationCoordinate)
    }
}
