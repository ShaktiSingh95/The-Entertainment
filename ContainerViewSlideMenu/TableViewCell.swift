//
//  TableViewCell.swift
//  ContainerViewSlideMenu
//
//  Created by Shakti Pratap Singh on 26/07/16.
//  Copyright © 2016 Shakti Pratap Singh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var collectionView: UICollectionView!

    func setCollectionViewDataSourceOrDelegate(dataSource: UICollectionViewDataSource?, delegate: UICollectionViewDelegate?){
        
        if dataSource != nil{
            
            collectionView.dataSource = dataSource
            
        }
        if delegate != nil{
            
            collectionView.delegate = delegate
            
        }
      collectionView.reloadData()
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
