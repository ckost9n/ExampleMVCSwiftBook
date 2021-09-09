//
//  MealViewController.swift
//  ExampleMVCSwiftBook
//
//  Created by Konstantin on 09.09.2021.
//

import UIKit

class MealViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var meals: [Meal] = []
    let cellController = CellController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        meals = DataManager.shared.loadMeals()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowMealDetail" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let meal = meals[indexPath.row]
        let mealDetailVC = segue.destination as! MealDetailViewController
        mealDetailVC.meal = meal
    }
}

