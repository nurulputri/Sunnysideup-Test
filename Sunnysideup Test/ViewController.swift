//
//  ViewController.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 06/04/22.
//

import UIKit

class ViewController: UIViewController {
    var menuArray: [Menu] = [
        Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol"),
        Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg"),
        Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg")
    ]
//    @IBOutlet weak var MilestoneDate: UILabel!
    @IBOutlet weak var MilestoneTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        MilestoneTableView.dataSource = self
//        MilestoneDate.text = getDateLabel()
    }
    
//    func getDateLabel() -> String {
//        var dateLabel = ""
//
//        let currentDate = Date()
//        let dateFormatter = DateFormatter()
//
//        dateFormatter.dateFormat = "EEEE"
//        let dayString = dateFormatter.string(from: currentDate)
//        dateLabel += "\(dayString), "
//
//        dateFormatter.dateFormat = "dd"
//        let dateString = dateFormatter.string(from: currentDate)
//        dateLabel += "\(dateString) "
//
//        dateFormatter.dateFormat = "LLLL"
//        let monthString = dateFormatter.string(from: currentDate)
//        dateLabel += "\(monthString) "
//
//        dateFormatter.dateFormat = "yyyy"
//        let yearString = dateFormatter.string(from: currentDate)
//        dateLabel += "\(yearString)"
//
//        return dateLabel
//    }
    
    struct Menu {
        var menuTitle: String?
        var menuCookTime: String?
        var menuCalorie: String?
        var menuImageName: String?
    }


}

//extension ViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return menuArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = MilestoneTableView.dequeueReusableCell(withIdentifier: "MilestoneRecipeCell") as! MilestoneTableViewCell
//        let menu = menuArray[indexPath.row]
//
//        cell.MilestoneRecipeNumber.text = "Meal \(indexPath.row + 1)"
//        cell.MilestoneImageView.image = UIImage(named: menu.menuImageName!)
//        cell.MilestoneRecipeLabel.text = menu.menuTitle
//        cell.MilestoneRecipeCookTime.text = menu.menuCookTime
//        cell.MilestoneRecipeCalorie.text = menu.menuCalorie
//
//        return cell
//    }
//
//}
