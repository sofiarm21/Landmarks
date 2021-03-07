//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 2/3/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
