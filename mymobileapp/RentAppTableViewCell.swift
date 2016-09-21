//
//  RentAppTableViewCell.swift
//  mymobileapp
//
//  Created by Ndoda Kheswa on 2016/09/19.
//  Copyright © 2016 Simple-software Technologies. All rights reserved.
//

import UIKit

class RentAppTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
