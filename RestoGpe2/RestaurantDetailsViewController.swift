//
//  RestaurantDetailsViewController.swift
//  RestoGpe2
//
//  Created by Ludovic Ollagnier on 15/12/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {

    var currentRestaurant: Restaurant!

    @IBOutlet weak var restoName: UILabel!
    @IBOutlet weak var restoNote: UILabel!
    @IBOutlet weak var restauAddress: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUpUI() {
        restoName.text = currentRestaurant.name
        self.title = currentRestaurant.name
        restauAddress.text = currentRestaurant.address

        if let note = currentRestaurant.grade {
            restoNote.text = "\(note)"
        } else {
            restoNote.text = "Non noté"
        }
    }
}
