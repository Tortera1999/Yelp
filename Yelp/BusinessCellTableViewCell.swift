//
//  BusinessCellTableViewCell.swift
//  Yelp
//
//  Created by Nikhil Iyer on 1/24/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit
import AFNetworking

class BusinessCellTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business : Business! {
        didSet {
            nameLabel.text = business.name;
            thumbImageView.setImageWith(business.imageURL!);
            categoriesLabel.text = business.categories
            addressLabel.text = business.address;
            reviewsCountLabel.text = "\(String(describing: business.reviewCount!)) Reviews";
            ratingImageView.setImageWith(business.ratingImageURL!);
            distanceLabel.text = business.distance
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
