//
//  MilestoneTableViewCell.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 07/04/22.
//

import UIKit

class MilestoneTableViewCell: UITableViewCell {

    @IBOutlet weak var MilestoneView: UIView!
    @IBOutlet weak var MilestoneRecipeNumber: UILabel!
    @IBOutlet weak var MilestoneImageView: UIImageView!
    @IBOutlet weak var MilestoneRecipeLabel: UILabel!
    @IBOutlet weak var MilestoneRecipeCookTime: UILabel!
    @IBOutlet weak var MilestoneRecipeCalorie: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
