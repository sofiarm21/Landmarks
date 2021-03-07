//
//  ContentView.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList(landmarks: ModelData().landmarks)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
