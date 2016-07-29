//
//  AppViewController.swift
//  
//
//  Created by Shakti Pratap Singh on 26/07/16.
//
//

import UIKit
import SlideMenuControllerSwift
class HomeViewController: SlideMenuController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addLeftBarButtonWithImage(UIImage(named: "si0010s")!)
        // Do any additional setup after loading the view.
    }
//    init(mainVc: String , leftVc: String){
//        
//        mainVcIdentifier = mainVc
//        leftVcIdentifier = leftVc
//
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    override func awakeFromNib(){
        
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier("home_main") {
            self.mainViewController = controller
        }
        if let controller = self.storyboard?.instantiateViewControllerWithIdentifier("app_left") {
            self.leftViewController = controller
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
