//
//  Diner.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/16/20.
//

import Foundation

struct Diner {
    var id: Int?
    let username: String
    let password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}
