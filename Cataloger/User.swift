//
//  User.swift
//  Cataloger
//
//  Created by Alex Dreier on 7/10/23.
//

import Foundation



/// - TODO: Figure out storing/adding/removing unique tracks with multiple filiters
class User: ObservableObject {
    @Published var username: String = ""
    @Published var catalog: Catalog = Catalog()
    @Published var albumWishlist = [Album]()
    @Published var trackWishlist = [Track]()
    @Published var trips = [Trip]()
    
    @Published var statistics = Statistics()
    
    func setUsername(username: String) {
        self.username = username
    }
    
    func startTrip() -> Trip {
        let newTrip = Trip(self)
        trips.append(newTrip)
        return newTrip
    }
    
    func tripsString() -> String {
        var output = ""
        for trip in trips {
            output += trip.description + ", "
        }
        
        return output
    }
}