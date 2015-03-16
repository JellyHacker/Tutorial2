//
//  Checklist.swift
//  Checklists
//
//  Created by Brandon Evans on 3/9/15.
//  Copyright (c) 2015 Vicinity inc. All rights reserved.
//


import UIKit


class Checklist: NSObject, NSCoding {
   
    var name: String = ""
    var items = [ChecklistItem]()
    var iconName: String
    
    init(name: String) {
        
        self.name = name
        // This declaration is necessary because iconName is not an optional variable
        self.iconName = "No Icon"
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        
        name = aDecoder.decodeObjectForKey("Name") as String
        items = aDecoder.decodeObjectForKey("Items") as [ChecklistItem]
        iconName = aDecoder.decodeObjectForKey("IconName") as String
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        
        aCoder.encodeObject(name, forKey: "Names")
        aCoder.encodeObject(items, forKey: "Items")
        aCoder.encodeObject(iconName, forKey: "IconName")
    }
    
    func countUncheckedItems() -> Int {
            
        var count = 0
            
        for item in items {
                
            if !item.checked {
                
                count += 1
            }
        }
            
        return count
    }
    
    
    
    
    
    
    
    
}
