//
//  RecipeListViewController.swift
//  Sunnysideup Test
//
//  Created by Nurul Srianda Putri on 11/04/22.
//

import UIKit

class RecipeListViewController: ViewController {
    
    var weeklyRecipes: [OneDayMenu] = [
        OneDayMenu(dayNumber: 1,
                   dayMenuList: [
                    Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol", menuDescription: "Deskripsi tempe mendol apa yaaa"),
                    Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "Wow salted egg tempe, enak sekali!!"),
                    Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "tempe dengan kecap ABC ulala")
                ]),
        OneDayMenu(dayNumber: 2,
                   dayMenuList: [
                    Menu(menuTitle: "spongebob", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "spongebob", menuDescription: "spongebob tidak untuk dimakan :)"),
                    Menu(menuTitle: "patrick", menuCookTime: "30 Mins", menuCalorie: "123 kcal", menuImageName: "patrick", menuDescription: "patrick star berbentuk bintang, dengan saus mexico"),
                    Menu(menuTitle: "squidward", menuCookTime: "10 Mins", menuCalorie: "111 kcal", menuImageName: "squidward", menuDescription: "digoreng dan diberikan bumbu khas bikini bottom")
                ]),
        OneDayMenu(dayNumber: 3,
                   dayMenuList: [
                    Menu(menuTitle: "Tempe Mendol", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "tempe_mendol", menuDescription: "Deskripsi tempe mendol apa yaaa"),
                    Menu(menuTitle: "Salted Egg Tempe", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "Wow salted egg tempe, enak sekali!!"),
                    Menu(menuTitle: "Resep abc", menuCookTime: "30 Mins", menuCalorie: "150 kcal", menuImageName: "tempe_salted_egg", menuDescription: "tempe dengan kecap ABC ulala")
                ]),
        OneDayMenu(dayNumber: 4,
                   dayMenuList: [
                    Menu(menuTitle: "spongebob", menuCookTime: "20 Mins", menuCalorie: "100 kcal", menuImageName: "spongebob", menuDescription: "spongebob tidak untuk dimakan :)"),
                    Menu(menuTitle: "patrick", menuCookTime: "30 Mins", menuCalorie: "123 kcal", menuImageName: "patrick", menuDescription: "patrick star berbentuk bintang, dengan saus mexico"),
                    Menu(menuTitle: "squidward", menuCookTime: "10 Mins", menuCalorie: "111 kcal", menuImageName: "squidward", menuDescription: "digoreng dan diberikan bumbu khas bikini bottom")
                ])
    ]
    
    @IBOutlet weak var AllRecipeTableView: UITableView! {
        didSet {
            AllRecipeTableView.rowHeight = 190
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AllRecipeTableView.dataSource = self
        AllRecipeTableView.separatorStyle = .none
        AllRecipeTableView.showsVerticalScrollIndicator = false

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

extension RecipeListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return weeklyRecipes.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weeklyRecipes[section].dayMenuList?.count ?? 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AllRecipeTableView.dequeueReusableCell(withIdentifier: "RecipeCell") as! RecipeListTableViewCell
        
        let recipe = weeklyRecipes[indexPath.section].dayMenuList![indexPath.row]

        cell.RecipeNameLabel.text = recipe.menuTitle
        cell.RecipeTimeCalorieLabel.text = "\(recipe.menuCookTime!) | \(recipe.menuCalorie!)"
        cell.RecipeDescriptionLabel.text = recipe.menuDescription
        cell.RecipeImageView.image = UIImage(named: recipe.menuImageName!)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Day \(String(describing: weeklyRecipes[section].dayNumber!))"
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        let view = UIView(frame: <#T##CGRect#>(x:0, y:0, width: tableView.frame.height, height: 30))
//
//        return view
//    }
    
}
