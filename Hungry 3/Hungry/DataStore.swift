//
//  DataStore.swift
//  Hungry
//
//  Created by Melody park on 11/28/17.
//  Copyright © 2017 Melody park. All rights reserved.
//
import Foundation

struct DataStore{
    let imageURL: String
    let name: String
    let ingredients: String
    
    init(dictionary: [String:String]) {
        self.imageURL = dictionary["images"] ?? ""
        self.name = dictionary["name"] ?? ""
        self.ingredients = dictionary["ingredientLines"] ?? ""
    }
    
    
    
}
