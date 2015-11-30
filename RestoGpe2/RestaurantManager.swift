//
//  RestaurantManager.swift
//  RestoGpe2
//
//  Created by Ludovic Ollagnier on 30/11/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantManager: CustomStringConvertible {

    private var restaurantArray = [Restaurant]()


    init() {

        createFakeRestos()
    }

    var allRestaurants: [Restaurant] {
        return restaurantArray
    }

    func addRestaurant(resto: Restaurant) {

        self.restaurantArray.append(resto)
    }

    func createFakeRestos() {

        restaurantArray.append(Restaurant(name: "Test", address: "Test", comment: "Test"))
        restaurantArray.append(Restaurant(name: "Test2", address: "Test2", comment: "Test2"))
        restaurantArray.append(Restaurant(name: "Test3", address: "Test3", comment: "Test3"))

    }

    var description: String {
        return allRestaurants.description
    }
    
}
