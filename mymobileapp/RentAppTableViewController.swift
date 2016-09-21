//
//  RentAppTableViewController.swift
//  mymobileapp
//
//  Created by Ndoda Kheswa on 2016/09/19.
//  Copyright © 2016 Simple-software Technologies. All rights reserved.
//

import UIKit

class RentAppTableViewController: UITableViewController {
    
    var cities = ["Recently viewed", "Become a host", "Popular apartments", "Invite friends"]
    var images = ["new_york.jpg", "cape_town.jpg", "durban.jpg", "pretoria.jpg" ]
    var price = ["R7800", "R5400", "R6000", "R8000"]
    var urls = ["", "", "", "", ""]
    var model: Array<Model> = []
    
    var image = RentAppTableViewCell()
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIndetify = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIndetify, forIndexPath: indexPath) as! RentAppTableViewCell
        
        
        let m = model[indexPath.row]
        
        
        
        cell.nameLabel.text = m.text
        cell.thumbnailImageView.image = m.im
        cell.typeLabel.text = m.picurl
        cell.priceLabel.text = m.price
        return cell
    }
    
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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cities.count
    }

    

}
