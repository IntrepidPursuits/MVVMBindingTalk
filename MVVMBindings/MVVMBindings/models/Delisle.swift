//
//  Delisle.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

struct Delisle: TemperatureConverter {
    var celcius: Double

    var degrees: Double {
        get {
            return (100.0 - celcius) * (3.0/2.0)
        }
        
        set {
            celcius = 100.0 - newValue * (2.0/3.0)
        }
    }

    var formatted: String {
        return "\(degrees) °De"
    }
}
