//
//  RequestedTvListViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 01/08/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class RequestedTvListViewController: UITableViewController {

    var query: Constants.ApiSearchQueries.TvRelated!
    var tvFetched = [Tv]()
    @IBOutlet var tvList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tvList.dataSource = self
        self.tvList.delegate = self
        AppModel.fetchPerticularTvShows(query){
            
            tvShows in
            self.tvFetched = tvShows
            self.tvList.reloadData()
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tvFetched.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.cellIdentifiers.requestedListTvCell) as! RequestedTypeTableViewCell
        cell.cellImageView.image = UIImage(named: "Gallery-Icon")
        cell.cellInfo.text = "dsf"
        return cell

    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
     //further code
    }
  
}
