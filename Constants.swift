//
//  Constants.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 30/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import Foundation
class Constants{
//    
//    struct apiSearchQueries {
//        
//        static let baseUrl = "https://api.themoviedb.org/3/"
//        static let apiKey = "ce7724b78a09f5436d559f3e56ad4ffa"
//        struct movieRelated {
//            static let popularMovies=apiSearchQueries.baseUrl + "movie/popular"
//            static let topRatedMovies=apiSearchQueries.baseUrl + "movie/top_rated"
//            static let upcoming=apiSearchQueries.baseUrl + "movies/upcoming"
//        }
//        struct tvRelated {
//            static let airedToday=apiSearchQueries.baseUrl + "tv/airing_today"
//        }
//        
//        
//    }
//    
    enum ApiSearchQueries : String{
        case apiKey = "ce7724b78a09f5436d559f3e56ad4ffa"
        enum MovieRelated : String{
            case popularMovies = "https://api.themoviedb.org/3/movie/popular"
            case topRatedMovies = "https://api.themoviedb.org/3/movie/top_rated"
            case upcomingMovies = "https://api.themoviedb.org/3/movie/upcoming"
           
        }
        enum TvRelated:String{
            
            case airedToday="https://api.themoviedb.org/3/tv/airing_today"
            case onTheAir="https://api.themoviedb.org/3/tv/on_the_air"
            case latest="https://api.themoviedb.org/3/tv/latest"
            case topRated="https://api.themoviedb.org/3/tv/top_rated"
            case popular="https://api.themoviedb.org/3/tv/popular"
            
        }
        enum CelebsRelated:String {
            
            case popular = "https://api.themoviedb.org/3/person/popular"
            case latest = "https://api.themoviedb.org/3/person/latest"
            
        }
    }
}
