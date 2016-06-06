//
//  Kelvin.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

struct Kelvin: TemperatureConverter {
    var celcius: Double

    var degrees: Double {
        get {
            return celcius * 273.15
        }
        
        set {
            celcius = newValue - 273.15
        }
    }

    var formatted: String {
        return "\(degrees) K"
    }
}
