//
//  CelebsMainViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 29/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class CelebsMainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var popularCelebsCollectionView: UICollectionView!
    @IBOutlet weak var celebsCategoriesTableView: UITableView!
    private var tableContent = ["Popular","New Celebs"]
    var popualarCelebs = [Celebs]()

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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return popualarCelebs.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        print("*****Asking for cell")
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.cellIdentifiers.celebsMainCollectionCell, forIndexPath: indexPath) as! CollectionViewCell
        cell.imageView.image = popualarCelebs[indexPath.row].posterImage
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //code to show details of the selected movies in new viewcontroller
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
