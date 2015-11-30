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

        print(nameTextfield.text!)
        print(addressTextField.text!)
        print(commentTextView.text)
        print(alreadyVisitedSwitch.on)
        print(gradeSlider.value)
    }

    @IBAction func switchValueChanged(sender: UISwitch) {

        gradeSlider.enabled = sender.on
//        gradeSlider.hidden = sender.off
    }
    @IBAction func gradeChanged(sender: AnyObject) {
    }
}
