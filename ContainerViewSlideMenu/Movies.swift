//
//  Movies.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 29/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import Foundation
import SwiftyJSON
class Movies{
    
    var title:String!
    var language:String!
    var overview:String!
    var releaseDate:String!
    var averageVote:String!
    var popularity:String!
    var posterImage:UIImage!
    init(json:JSON){
        
        self.title = json["original_title"].string
        self.language = json["original_language"].string
        self.overview = json["overview"].string
        self.popularity = json["popularity"].string
        self.averageVote = json["vote_average"].string
        self.posterImage = UIImage(named: "Gallery-Icon")
    }
    
}