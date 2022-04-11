//
//  MilestoneMealTableViewCell.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import UIKit

class MilestoneMealTableViewCell: UITableViewCell {
    
    @IBOutlet weak var MealContainerView: UIView! {
        didSet {
            MealContainerView.layer.cornerRadius = 10
            MealContainerView.layer.shadowOpacity = 0.3
            MealContainerView.layer.shadowRadius = 2
            MealContainerView.layer.shadowOffset = CGSize(width: 1, height: 1)
        }
    }
    
    @IBOutlet weak var MealClippingView: UIView! {
        didSet {
            MealClippingView.layer.cornerRadius = 10
            MealClippingView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var MilestoneImageContainerView: UIView! {
        didSet {
            MealContainerView.layer.cornerRadius = 10
            MealContainerView.layer.shadowOpacity = 0.3
            MealContainerView.layer.shadowRadius = 2
            MealContainerView.layer.shadowOffset = CGSize(width: 1, height: 1)
            MealContainerView.layer.shadowColor = UIColor.black.cgColor
        }
    }
    
    @IBOutlet weak var MilestoneMealNumber: UILabel!
    @IBOutlet weak var MilestoneMealLabel: UILabel!
    @IBOutlet weak var MilestoneMealImageView: UIImageView! {
        didSet {
            MilestoneMealImageView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var MilestoneMealCookTimeLabel: UILabel!
    @IBOutlet weak var MilestoneMealCalorieLabel: UILabel!
    @IBOutlet weak var MilestoneStartButton: UIButton!
    
    @IBAction func onClick(_ sender: UIButton) {

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
