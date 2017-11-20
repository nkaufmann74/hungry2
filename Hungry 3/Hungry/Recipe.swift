//
//  Recipe.swift
//  Hungry
//
//  Created by Rebekkah Koo on 10/31/17.
//  Copyright © 2017 Rebekkah Koo. All rights reserved.
//

import Foundation
import UIKit

class Recipe {
    
    var name:String
    var photo:UIImage
    var rating:Int
    var ingredients:[String]
    var steps:[String]
    var prepTime:String
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage, rating: Int, ingredients:[String], steps:[String], prepTime: String) {
        self.name = name
        self.photo = photo
        self.rating = rating
        self.ingredients = ingredients
        self.steps = steps
        self.prepTime = prepTime
    }
}
