//
//  DataManager.swift
//  ExampleMVCSwiftBook
//
//  Created by Konstantin on 09.09.2021.
//

import UIKit

class DataManager {
    
    static let shared = DataManager()
    
    func saveMeals(_ meals: [Meal]) {
        // TODO: Implement save meals
    }
    
    func loadMeals() -> [Meal] {
        let meals = [
            Meal(name: "Суп",
                 image: UIImage(named: "First") ?? UIImage()
                 , notes: "Борщ",
                 rating: 7,
                 date: Date()
            ),
            Meal(name: "Горячее",
                 image: UIImage(named: "Second") ?? UIImage()
                 , notes: "Плов",
                 rating: 9,
                 date: Date()
            ),
            Meal(name: "Десерт",
                 image: UIImage(named: "Third") ?? UIImage()
                 , notes: "Мороженное",
                 rating: 5,
                 date: Date()
            )
        ]
        
        return meals
    }
}


