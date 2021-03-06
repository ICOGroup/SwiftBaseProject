//
//  MovieTitleTableViewCell.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit
import Haneke

class MovieTitleTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieCoverImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension MovieTitleTableViewCell: BaseViewCell {
    
    func configureItem(item: Movie) {
        
        movieTitleLabel.text = item.title
        
        if let cover = item.poster {
            movieCoverImage.hnk_setImageFromURL(NSURL(string: cover)!)
            print("coverUrl: "+cover)
        }
    }
}
