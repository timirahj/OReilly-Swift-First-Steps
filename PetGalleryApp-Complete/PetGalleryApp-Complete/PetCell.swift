//
//  PetCell.swift
//  PetGalleryApp-Complete
//
//  Created by Timirah James on 8/25/20.
//  Copyright © 2020 Timirah James. All rights reserved.
//

import UIKit

class PetCell: UITableViewCell {
  
  @IBOutlet weak var petImageView: UIImageView!
  @IBOutlet weak var petNameLabel: UILabel!
  @IBOutlet weak var petWeightLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
