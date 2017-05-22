//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate",
     "Tim" : "Natural Vanilla",
     "Sophie" : "Mexican Chocolate",
     "Deniz" : "Natural Vanilla",
     "Tom" : "Mexican Chocolate",
     "Jim" : "Natural Vanilla",
     "Susan" : "Cookies 'N' Cream"]

    // finsihed
    // 2.
    
    
    func names(forFlavor flavor: String) -> [String] {
        var newArray: [String] = []
        for (person, taste) in favoriteFlavorsOfIceCream {
                if taste == flavor {
                    newArray += [person]
                }
            }
        return newArray
    }
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var number = 0
        for (person, taste) in favoriteFlavorsOfIceCream {
            if taste == flavor {
                number = number + 1
            }
        }
        return number
    }
    
    
    // 4.
   
    
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
        }

    
    // 5.

    func replace(flavor flavor: String, forPerson person: String) -> Bool {
        // could use boolean test
        if let exist = favoriteFlavorsOfIceCream[person] {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    // 6.
    
    
    func remove(person person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    
    // 7.
    
    
    func numberOfAttendees() -> Int {
        let count = favoriteFlavorsOfIceCream.count
        return count
    }
    
    
    // 8.
    
    func add(person person: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            return false
        } else {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        }
    }
    
    
    // 9.
    
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var sentence = ""
        for names in allNames {
            if let flavor = favoriteFlavorsOfIceCream[names] {
                sentence += "\(names) likes \(flavor)\n"
            }
        }
        return sentence.substring(to: sentence.index(before: sentence.endIndex))
        
    }
    // finished
    
    
    
    
    
    

}
