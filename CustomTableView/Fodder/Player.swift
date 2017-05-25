//
//  Player.swift
//  Fodder
//
//  Created by cci-loaner on 5/25/17.
//  Copyright © 2017 Kune Studios. All rights reserved.
//

import Foundation

class Player {
    var name :String
    var level :String
    
    init(n:String, l:String) {
        name = n;
        level = l;
    }
    
    func getName() -> String{
        return name;
    }
    
    func getLevel() -> String{
        return level;
    }
    
    
    
}
