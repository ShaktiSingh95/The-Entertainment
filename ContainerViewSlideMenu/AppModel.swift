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

class AppModel{
    
    class func fetchPerticularMovies(queryUrl:Constants.ApiSearchQueries.MovieRelated,handler: [Movies]->Void){
        var parameters:[String:AnyObject] = ["api_key": Constants.ApiSearchQueries.apiKey.rawValue]
        Alamofire.request(.GET, queryUrl.rawValue, parameters: parameters).responseJSON(){
            
            response in
            var movies = [Movies]()
            print(response.result.value!)
            let json = response.result.value!
            //          for subJson in json["results"]{
            //
            
            //   movies.append(Movies(subJson))
            //                movies.append(Movies(subJson))
            //
            //      }
            //handler(movies)
        }
    }
    class func fetchPerticularTvShows(queryUrl:Constants.ApiSearchQueries.TvRelated,handler: [Tv]->Void){
        
        var parameters:[String:AnyObject]=["api_key":Constants.ApiSearchQueries.apiKey.rawValue]
        Alamofire.request(.GET, queryUrl.rawValue, parameters: parameters).responseJSON(){
            
            response in
            var tvShows = [Tv]()
            let json = response.result.value!
            print(json)
            //            for subJson in json["results"]{
            //               tvShows.append(Tv(json: subJson))
            //}
            
        }
        
    }
    class func fetchPerticularCelebs(queryUrl:Constants.ApiSearchQueries.CelebsRelated,handler: [Celebs]->Void){
        
        var parameters:[String:AnyObject]=["api_key":Constants.ApiSearchQueries.apiKey.rawValue]
        Alamofire.request(.GET, queryUrl.rawValue, parameters: parameters).responseJSON(){
            
            response in
            var tvShows = [Tv]()
            let json = response.result.value!
            print(json)
            //            for subJson in json["results"]{
            //               tvShows.append(Tv(json: subJson))
            //}
            
        }
    }
}