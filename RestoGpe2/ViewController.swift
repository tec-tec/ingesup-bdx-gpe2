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

        let grade: Int?

        if alreadyVisitedSwitch.on {
            grade = Int(gradeSlider.value)
        } else {
            grade = nil
        }

        let resto = Restaurant(name: nameTextfield.text!, address: addressTextField.text!, comment: commentTextView.text, alreayVisited: alreadyVisitedSwitch.on, grade: grade)

        print(resto)
    }

    @IBAction func switchValueChanged(sender: UISwitch) {

        gradeSlider.enabled = sender.on
//        gradeSlider.hidden = sender.off
    }
    @IBAction func gradeChanged(sender: AnyObject) {
    }
}
