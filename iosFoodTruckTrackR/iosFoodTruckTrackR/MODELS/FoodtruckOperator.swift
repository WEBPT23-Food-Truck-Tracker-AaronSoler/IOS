//
//  FoodtruckOperator.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/15/20.
//

import Foundation
import MapKit

class FoodtruckOperator {
    let id: Int?
    let truckImage: String
    let cuisineType: String?
    let location: String?
    let operatorId: Int?
    let name: String

    
    init(id: Int, name: String, truckImage: String, cuisineType: String, location: String, operatorId: Int) {
        self.id = id
        self.name = name
        self.truckImage = truckImage
        self.cuisineType = cuisineType
        self.location = location
        self.operatorId = operatorId
        
    }
    
}

/*
 Field    Type    Notes
 id    integer    primary key and autoincrements
 truck_image    string    optional
 cuisine_type    string    required
 location    string    optional
 departure_time    string    optional
 operator_id    integer    required
 */
