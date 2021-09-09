//
//  Model.swift
//  ExampleMVCSwiftBook
//
//  Created by Konstantin on 09.09.2021.
//

import UIKit

struct Meal {
    
    let name: String
    let image: UIImage
    let notes: String
    let rating: Int
    let date: Date
    
    var ratingBar: String {
        return String(repeating: "⭐️", count: rating)
    }
}
