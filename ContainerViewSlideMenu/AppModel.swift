//
//  AppModel.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 28/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

//*** error as soon as you comment out for loop ***
import Foundation
import Alamofire
import SwiftyJSON

class AppModel{
    
    class func fetchPerticularMovies(queryUrl:Constants.ApiSearchQueries.MovieRelated,handler: [Movie]->Void){
        var parameters:[String:AnyObject] = ["api_key": Constants.ApiSearchQueries.apiKey.rawValue]
        Alamofire.request(.GET, queryUrl.rawValue, parameters: parameters).responseJSON(){
            
            response in
            var movies = [Movie]()
            let json = response.result.value!
            //                     for subJson in json["results"]{
            //
            //
            //                            movies.append(Movies(subJson))
            //
            //                }
            //            handler(movies)
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
    class func fetchPerticularCelebs(queryUrl:Constants.ApiSearchQueries.CelebsRelated,handler: [Celeb]->Void){
        
        var parameters:[String:AnyObject]=["api_key":Constants.ApiSearchQueries.apiKey.rawValue]
        Alamofire.request(.GET, queryUrl.rawValue, parameters: parameters).responseJSON(){
            
            response in
            var celebs = [Celeb]()
            let json = response.result.value!
            print(json)
            //            for subJson in json["results"]{
            //               celebs.append(Tv(json: subJson))
            //
            
        }
    }
}