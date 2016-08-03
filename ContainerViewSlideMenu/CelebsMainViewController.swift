//
//  CelebsMainViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 29/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit
import Kingfisher
class CelebsMainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var popularCelebsCollectionView: UICollectionView!
    @IBOutlet weak var celebsCategoriesTableView: UITableView!
    private var tableContent = ["Popular","New Celebs"]
    // ***  ***  ***  ***
    //bound to declare this array because xcode was not allowing to define static cells of table view
    //until the viewcontroller was a table view controller, which in this case is not
    // ***  ***  ***  ***
    var popualarCelebs = [Celeb]()
    var placeHolderImage = UIImage(named:Constants.imageIdentifiers.placeHolderImage)
    override func viewDidLoad() {
        super.viewDidLoad()
        popularCelebsCollectionView.dataSource = self
        popularCelebsCollectionView.delegate = self
        celebsCategoriesTableView.dataSource=self
        celebsCategoriesTableView.delegate=self
        
        AppModel.fetchPerticularCelebs(Constants.ApiSearchQueries.CelebsRelated.popular){
            
            celebs in
            self.popualarCelebs = celebs
            self.popularCelebsCollectionView.reloadData()
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
        // *** should return popualarCelebs.count when the error is fixed ***
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        print("*****Asking for cell")
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.cellIdentifiers.celebsMainCollectionCell, forIndexPath: indexPath) as! CollectionViewCell
        
        cell.imageView.kf_setImageWithURL(NSURL(string: ""), placeholderImage:placeHolderImage)
        
        // *** should send popularCelebs.posterImagePath in nsurl when the error is fixed ***
        
        
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //code to show details of the selected CELEB in new viewcontroller
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableContent.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.cellIdentifiers.celebsMainTableCell)!
        cell.textLabel?.text = tableContent[indexPath.row]
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let row = indexPath.row
        let destinationVc = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.requestedCelebsVc) as! RequestedCelebsViewController
        switch row{
            
        case 0 : destinationVc.query = Constants.ApiSearchQueries.CelebsRelated.popular
        case 1:
            destinationVc.query = Constants.ApiSearchQueries.CelebsRelated.latest
        default: break
            
            
        }
        self.showViewController(destinationVc, sender: nil)
        
    }
    
    
    
}
