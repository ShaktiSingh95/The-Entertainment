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
    var posterImagePath:String!
    init(json:JSON){
        
        self.title = json["original_title"].string
        self.language = json["original_language"].string
        self.overview = json["overview"].string
        self.popularity = json["popularity"].string
        self.averageVote = json["vote_average"].string
        self.posterImagePath = "https://scontent-sit4-1.xx.fbcdn.net/v/t1.0-0/s526x395/13680612_1662401657421945_7657088132119224620_n.jpg?oh=75a8a578b6f271b531d84a67f68dbbc2&oe=5825FAF8"
    }
    
}