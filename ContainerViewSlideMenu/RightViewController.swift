//
//  LeftViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 29/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class rightViewController: UITableViewController {
    
    @IBOutlet var rightTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.rightTableView.delegate=self
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        if indexPath.row == 0{
            let destinationVc = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.homeVc) as! HomeViewController
            showViewController(destinationVc, sender: nil)
            
          //  self.navigationController?.popViewControllerAnimated(true)
        }
        else if indexPath.row == 1{
            
            let destinationVc = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.moviesVc) as! MovieViewController
            showViewController(destinationVc, sender: nil)
            
        }
            
        else if indexPath.row == 2{
            
            let destinationVc = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.tvVc) as! TvViewController
            showViewController(destinationVc, sender: nil)
            
            
        }
        else if indexPath.row == 3{
            
            let destinationVc = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.celebsVc) as! CelebsViewController
            showViewController(destinationVc, sender: nil)
            
        }
        
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
