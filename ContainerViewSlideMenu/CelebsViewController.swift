//
//  CelebsViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 29/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift
class CelebsViewController: SlideMenuController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addRightBarButtonWithImage(UIImage(named: Constants.imageIdentifiers.rightOptionMenuButtonImage)!)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.closeRight()
        
    }
    override func awakeFromNib(){
        
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.celebsMainVc) {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier(Constants.viewControllerIdentifiers.rightSliderVc) {
            self.rightViewController = controller
        }
        super.awakeFromNib()
        
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
