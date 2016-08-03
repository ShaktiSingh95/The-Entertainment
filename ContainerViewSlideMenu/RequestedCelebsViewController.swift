//
//  RequestedCelebsViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 01/08/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class RequestedCelebsViewController: UITableViewController {
    var query: Constants.ApiSearchQueries.CelebsRelated!
    @IBOutlet var celebsList: UITableView!
    var celebsFetched = [Celeb]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.celebsList.dataSource = self
        self.celebsList.delegate = self
        AppModel.fetchPerticularCelebs(query){
            
            celebs in
            self.celebsFetched = celebs
            self.celebsList.reloadData()
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return celebsFetched.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.cellIdentifiers.requestedListCelebsCell) as! RequestedTypeTableViewCell
        cell.cellImageView.image = UIImage(named: "Gallery-Icon")
        cell.cellInfo.text = "dsf"
        return cell
        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //further code
    }
    
}
