//
//  Diner.swift
//  iosFoodTruckTrackR
//
//  Created by BrysonSaclausa on 10/16/20.
//

import Foundation

struct Diner: Codable {
    var id: Int?
    let email: String
    let password: String
    let username: String
    let firstName: String
    let lastName: String
    
    init(email: String, password: String, username: String, firstName: String, lastName: String) {
        self.email = email
        self.username = username
        self.password = password
        self.firstName = firstName
        self.lastName = lastName
    }
}
