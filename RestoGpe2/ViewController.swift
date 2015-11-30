//
//  ViewController.swift
//  RestoGpe2
//
//  Created by Ludovic Ollagnier on 30/11/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var commentTextView: UITextView!
    @IBOutlet weak var alreadyVisitedSwitch: UISwitch!
    @IBOutlet weak var gradeSlider: UISlider!
    @IBOutlet weak var gradeLabel: UILabel!

    var restoManager = RestaurantManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        view.backgroundColor = UIColor.rouseColor()    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saveRestaurant(sender: AnyObject) {

        guard nameTextfield.text?.isEmpty == false else {
            return
        }

        let resto: Restaurant

        if alreadyVisitedSwitch.on {

            resto = Restaurant(name: nameTextfield.text!, address: addressTextField.text!, comment: commentTextView.text, alreadyVisited: alreadyVisitedSwitch.on, grade: Int(gradeSlider.value))

        } else {
            resto = Restaurant(name: nameTextfield.text!, address: addressTextField.text!, comment: commentTextView.text)
        }

        restoManager.addRestaurant(resto)
        print(restoManager)
    }

    @IBAction func switchValueChanged(sender: UISwitch) {

        gradeSlider.enabled = sender.on
//        gradeSlider.hidden = sender.off
    }
    @IBAction func gradeChanged(sender: UISlider) {

        gradeLabel.text = "\(Int(sender.value))"
    }
}
