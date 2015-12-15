//
//  RestaurantsTableViewController.swift
//  RestoGpe2
//
//  Created by Ludovic Ollagnier on 30/11/2015.
//  Copyright © 2015 Tec-Tec. All rights reserved.
//

import UIKit

class RestaurantsTableViewController: UITableViewController {

    let restoManager = RestaurantManager()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return restoManager.allRestaurants.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        // Comment this an uncomment below for the customCell
        let cell = tableView.dequeueReusableCellWithIdentifier("RestoCell", forIndexPath: indexPath)
        let resto = restoManager.allRestaurants[indexPath.row]
        cell.detailTextLabel?.text = resto.address
        cell.textLabel?.text = resto.name

//Uncomment for custom cell
//        let cell = tableView.dequeueReusableCellWithIdentifier("RestoCell2", forIndexPath: indexPath) as! CustomCell
//        cell.aSwitch.setOn(true, animated: false)

        return cell
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if segue.identifier == "showForm" {
            let destVC = segue.destinationViewController as! ViewController


        } else if segue.identifier == "showDetails" {
            let destVC = segue.destinationViewController as! RestaurantDetailsViewController
            destVC.title = "Hellloooo!!!"
            destVC.test = "Implemented !!"
        }


        
    }

}

class CustomCell: UITableViewCell {

    @IBOutlet weak var aSwitch: UISwitch!

}
