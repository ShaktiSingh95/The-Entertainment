//
//  RequestedMovieTypeTableViewCell.swift
//  
//
//  Created by Shakti Pratap Singh on 31/07/16.
//
//

import UIKit

class RequestedTypeTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var cellInfo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
