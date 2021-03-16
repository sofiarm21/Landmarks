//
//  Hike.swift
//  Landmarks
//
//  Created by Sofia Rodriguez Morales on 15/3/21.
//

import Foundation

struct Hike: Hashable, Codable, Identifiable {
   
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    static var formatter = LengthFormatter()

   var distanceText: String {
       return Hike.formatter
           .string(fromValue: distance, unit: .kilometer)
   }
    
    struct Observation: Codable, Hashable {
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
        var distanceFromStart: Double
    }

}
