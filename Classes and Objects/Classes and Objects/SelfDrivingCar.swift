//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Andre D'Souza on 2017-12-27.
//  Copyright © 2017 Andre D'Souza. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    
    var destination : String?
    
    override func drive() {
        super.drive()
        
        if let userSetDestination = destination {
            print("driving towards " + userSetDestination)
        }
    }
}
