//
//  HomeViewController.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 26/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit
import Kingfisher
class HomeMainViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var popularMoviesCollectionView: UICollectionView!
   
    @IBOutlet weak var popularTvShowsCollectionView: UICollectionView!
 
    @IBOutlet weak var popularCelebsCollectionView: UICollectionView!
    
    var popularMovies = [Movies]()
    var popularTvShows = [Tv]()
    var popularCelebs = [Celebs]()
    
    var placeHolderImage = UIImage(named:Constants.imageIdentifiers.placeHolderImage)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popularCelebsCollectionView.dataSource = self
        popularMoviesCollectionView.dataSource = self
        popularTvShowsCollectionView.dataSource = self
        popularTvShowsCollectionView.delegate = self
        popularMoviesCollectionView.delegate = self
        popularCelebsCollectionView.delegate = self
        
        AppModel.fetchPerticularCelebs(Constants.ApiSearchQueries.CelebsRelated.popular){
        
            celebs in
            self.popularCelebs = celebs
        
        }
        AppModel.fetchPerticularMovies(Constants.ApiSearchQueries.MovieRelated.popularMovies){
            
            movies in
            self.popularMovies = movies
            
        }
        AppModel.fetchPerticularTvShows(Constants.ApiSearchQueries.TvRelated.popular){
            
            tvShows in
            self.popularTvShows = tvShows
            
        }
        
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        if collectionView == popularCelebsCollectionView{
//            
//            return popularCelebs.count
//            
//        }
//        else if collectionView == popularMoviesCollectionView{
//            
//            return popularMovies.count
//            
//        }
//        else {
//            
//            return popularTvShows.count
//            
//        }
        
        return 10
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
    
        if collectionView == popularCelebsCollectionView{
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.cellIdentifiers.homePopularCelebsCell, forIndexPath: indexPath) as! CollectionViewCell
            cell.imageView.kf_setImageWithURL(NSURL(string: "http://vignette1.wikia.nocookie.net/filmguide/images/b/be/Interstellar-poster.jpg/revision/latest?cb=20150226092240"), placeholderImage: placeHolderImage)
            return cell
            
        }
        else if collectionView == popularMoviesCollectionView{
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.cellIdentifiers.homePopularMovieCell, forIndexPath: indexPath) as! CollectionViewCell
             cell.imageView.kf_setImageWithURL(NSURL(string: "http://vignette1.wikia.nocookie.net/filmguide/images/b/be/Interstellar-poster.jpg/revision/latest?cb=20150226092240"), placeholderImage: placeHolderImage)
            return cell
            
        }
        else{
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Constants.cellIdentifiers.homePopularTvCell, forIndexPath: indexPath) as! CollectionViewCell
             cell.imageView.kf_setImageWithURL(NSURL(string: "http://vignette1.wikia.nocookie.net/filmguide/images/b/be/Interstellar-poster.jpg/revision/latest?cb=20150226092240"), placeholderImage: placeHolderImage)
       return cell
        
        }
        
    }
   
   }
