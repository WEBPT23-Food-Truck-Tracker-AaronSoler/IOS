//
//  Landmark.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/20/20.
//

import MapKit
import Foundation

class Landmark: NSObject, MKAnnotation {
    
    var foodtruckOperator: FoodtruckController?
    var coordinate: CLLocationCoordinate2D
    let name: String
    
    var title: String? {
        return name
    }
    
    init(coordinate: CLLocationCoordinate2D, name: String) {
        self.coordinate = coordinate
        self.name = name
    }
    
    
    
}

