//
//  RequestedMovieListViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 31/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class RequestedMovieListViewController: UITableViewController {

    var query : Constants.ApiSearchQueries.MovieRelated!
    @IBOutlet var movieListTableView: UITableView!
    var moviesFetched = [Movies]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.movieListTableView.dataSource = self
        self.movieListTableView.delegate = self
        AppModel.fetchPerticularMovies(query){
            
            movies in
            self.moviesFetched = movies
            self.movieListTableView.reloadData()
            
        }

        // Do any additional setup after loading the view.
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesFetched.count
        //moviesFetched.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("movies_cell") as! RequestedTypeTableViewCell
        cell.cellImageView.image = UIImage(named: "Gallery-Icon")
        cell.cellInfo.text = "dsf"
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
