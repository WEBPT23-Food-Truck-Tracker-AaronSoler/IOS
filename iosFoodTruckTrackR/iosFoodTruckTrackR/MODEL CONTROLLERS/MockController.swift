//
//  MockController.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/15/20.
//

import Foundation

class MockOperatorController {
    var operatorArray = [FoodtruckOperator]()
    
    init() {
        //+ operator properties: picture, location - longitude : latitude, isFavorite, 
        let truck1 = FoodtruckOperator(name: "Worlds Best Taco Truck, Period", truckImage: "ft1")
        let truck2 = FoodtruckOperator(name: "Corndogs On The Run", truckImage: "ft2")
        let truck3 = FoodtruckOperator(name: "Pho Wheelz", truckImage: "ft3")
        [truck1, truck2, truck3].forEach {
            operatorArray.append($0)
        }
    }
    
}
