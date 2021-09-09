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
}

