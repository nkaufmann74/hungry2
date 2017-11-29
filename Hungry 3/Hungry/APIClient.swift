//
//  APIClient.swift
//  Hungry
//
//  Created by Melody park on 11/28/17.
//  Copyright © 2017 Melody park. All rights reserved.
//

import Foundation
class APIClient {
    
    let baseUrl = "http://api.yummly.com/v1/api/recipes?_app_id=0d8e8a84&_app_key=108d39dca04337a59dfb5ccb9241bd78"
    
    static func Get(term: String){
       
        var url = "\(baseUrl)" + "&" + "\(term)"
        let session = URLSession.shared
        
        guard let unwrappedURL = url else { print("Error unwrapping URL"); return}
        
        
        
        
        //TODO implement getting JSON OBject for recipe that you want
    }
}
