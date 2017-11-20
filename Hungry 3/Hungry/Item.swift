//
//  Item.swift
//  Hungry
//
//  Created by Nikole Kaufmann on 11/9/17.
//  Copyright © 2017 Melody park. All rights reserved.
//

import Foundation

class Item {
    
    fileprivate var _name:String = ""

    init(name:String) {
        self._name = name
    }
    
    var name:String {
        get { return _name }
        set (newValue) { _name = newValue }
    }
}
