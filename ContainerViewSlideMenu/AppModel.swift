//
//  AppModel.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 28/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
public enum movieMethod{
    
    case topRated
    case popular
    case upcoming
    
}
class AppModel{
    
    class func fetchPerticularMovies(type: movieMethod,numberOfItems: Int,handler: [Movies]->Void){
//        Alamofire.request(.GET, <#T##URLString: URLStringConvertible##URLStringConvertible#>, parameters: <#T##[String : AnyObject]?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##[String : String]?#>)
//        
    }
    
}