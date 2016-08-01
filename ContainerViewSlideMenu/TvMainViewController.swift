//
//  TvMainViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 29/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class TvMainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var popularTvCollectionView: UICollectionView!
    @IBOutlet weak var tvCategoriesTableView: UITableView!
    
    private var tableContent = ["Aired Today","On The Air","Latest","Top Rated","Most Popular"]
    var popualarTvShows = [Tv]()

    override func viewDidLoad() {
        super.viewDidLoad()
        popularTvCollectionView.dataSource = self
        popularTvCollectionView.delegate = self
        tvCategoriesTableView.dataSource=self
        tvCategoriesTableView.delegate=self
        
        AppModel.fetchPerticularTvShows(Constants.ApiSearchQueries.TvRelated.popular){
            
            tvShows in
            self.popualarTvShows = tvShows
            self.popularTvCollectionView.reloadData()
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return popualarTvShows.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        print("*****Asking for cell")
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.cellIdentifiers.tvMainCollectionCell, forIndexPath: indexPath) as! CollectionViewCell
        cell.imageView.image = popualarTvShows[indexPath.row].posterImage
        return cell
    }
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        //code to show details of the selected movies in new viewcontroller
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableContent.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(Constants.cellIdentifiers.tvMainTableCell)!
        cell.textLabel?.text = tableContent[indexPath.row]
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        let row = indexPath.row
        let destinationVc = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.requestedTvVc) as! RequestedTvListViewController
        switch row {
        case 0:
            destinationVc.query = Constants.ApiSearchQueries.TvRelated.airedToday
        case 1:
            destinationVc.query = Constants.ApiSearchQueries.TvRelated.onTheAir
        case 2:
            destinationVc.query = Constants.ApiSearchQueries.TvRelated.latest
        case 3:
            destinationVc.query = Constants.ApiSearchQueries.TvRelated.topRated
        case 4:
            destinationVc.query = Constants.ApiSearchQueries.TvRelated.popular
        default:
            break
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
