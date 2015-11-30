//
//  Extensions.swift
//  RestoGpe2
//
//  Created by Ludovic Ollagnier on 30/11/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit


protocol Addressable {

    var address: String { get }
    var name: String { get }
}

extension UIColor {

    static func rouseColor() -> UIColor {

        return UIColor(red: 1.0, green: 0.078, blue: 0.576, alpha: 1)
    }

}

extension UISwitch {

    var off: Bool {

        get {
            return !on
        }

        set {
            on = !newValue
        }
    }
}
