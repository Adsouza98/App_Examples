//
//  Car.swift
//  Classes and Objects
//
//  Created by Andre D'Souza on 2017-12-27.
//  Copyright © 2017 Andre D'Souza. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case HatchBack
}

class Car {
    var colour : String = "Black"
    var numberOfSeats : Int = 5
    var typeOfCar : CarType = .Coupe
    
    init() {
        
    }
    
    convenience init(customerChosenColour : String) {
        self.init()
        colour = customerChosenColour
    }
    
    func drive() {
        print("Car is moving")
    }
}
