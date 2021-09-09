//
//  CellController.swift
//  ExampleMVCSwiftBook
//
//  Created by Konstantin on 09.09.2021.
//

import UIKit

class CellController {
    
    func configure(_ cell: UITableViewCell, whith meal: Meal) {
        cell.textLabel?.text = meal.name
        cell.detailTextLabel?.text = meal.ratingBar
        cell.imageView?.image = meal.image
    }
}
