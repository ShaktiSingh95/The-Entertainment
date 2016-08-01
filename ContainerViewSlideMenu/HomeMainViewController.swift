//
//  HomeViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 26/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class HomeMainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource {

   
        // Configure the view for the selected state
 
    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        
        self.homeTableView.dataSource=self
        self.homeTableView.delegate=self
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.cellIdentifiers.homeMainTableViewCell) as! TableViewCell
        return cell
        
    }
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        let cell = cell as! TableViewCell
        cell.setCollectionViewDataSourceOrDelegate(self, delegate: self)
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
     let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.cellIdentifiers.homeMainCollectionCellEmbeddedInTableCell, forIndexPath: indexPath) as! CollectionViewCell
       cell.imageView.image = UIImage(named: "Gallery-Icon")
        return cell
    }
}
