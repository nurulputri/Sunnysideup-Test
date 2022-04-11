//
//  RecipeListViewController.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import UIKit

class RecipeListViewController: ViewController {
    
    var weeklyMenu: [OneDayMenu] = [
        OneDayMenu(dayNumber: 1,
                   dayMenuList: [
                    Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol"),
                    Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg"),
                    Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg")
                ]),
        OneDayMenu(dayNumber: 2,
                   dayMenuList: [
                    Menu(menuTitle: "spongebob", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "spongebob"),
                    Menu(menuTitle: "patrick", menuCookTime: "30 Mins", menuCalorie: "123 kcal", menuImageName: "patrick"),
                    Menu(menuTitle: "squidward", menuCookTime: "10 Mins", menuCalorie: "111 kcal", menuImageName: "squidward")
                ])
    ]
    
    @IBOutlet weak var AllRecipeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
