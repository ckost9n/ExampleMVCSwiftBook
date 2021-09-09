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
    
    var currentDate: String {
        let dateformater = DateFormatter()
        dateformater.dateStyle = .medium
        dateformater.timeStyle = .short
        dateformater.locale = Locale(identifier: "ru_RU")
        return dateformater.string(from: date)
    }
}
