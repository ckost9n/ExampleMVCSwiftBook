//
//  Extantion + MealDetailVC.swift
//  ExampleMVCSwiftBook
//
//  Created by Konstantin on 09.09.2021.
//

import UIKit

extension MealDetailViewController {
    
    func updateUI(with size: CGSize) {
        
        let isFertical = size.width < size.height
        
        mealStackView.axis = isFertical == true ? .vertical : .horizontal
        
        title = meal.name
        imageView.image = meal.image
        mealRatingLabel.text = meal.ratingBar
        mealNotesLabel.text = meal.notes
        mealDateLabel.text = meal.currentDate
        
        
    }
}
