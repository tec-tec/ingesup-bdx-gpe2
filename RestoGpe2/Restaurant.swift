//
//  Restaurant.swift
//  RestoGpe2
//
//  Created by Ludovic Ollagnier on 30/11/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

struct Restaurant: CustomStringConvertible {

    let name: String
    let address: String
    var comment: String
    var alreayVisited: Bool
    var grade: Int?

    init(name: String, address: String, comment: String, alreadyVisited: Bool = false, grade: Int? = nil) {

        if grade != nil && alreadyVisited == false {
            fatalError("We should not grade before visiting")
        }

        self.name = name
        self.address = address
        self.comment = comment
        self.alreayVisited = alreadyVisited
        self.grade = grade
    }

    var description: String {
        return "Resto : " + name + " , à l'adresse " + address + " est noté \(grade)"
    }
}