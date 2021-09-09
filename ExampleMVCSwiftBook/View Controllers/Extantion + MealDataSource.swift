//
//  Extantion + MealDataSource.swift
//  ExampleMVCSwiftBook
//
//  Created by Konstantin on 09.09.2021.
//

import UIKit

extension MealViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath)
        
        let meal = meals[indexPath.row]
        cellController.configure(cell, whith: meal)
        
        return cell
    }
    
    
}
