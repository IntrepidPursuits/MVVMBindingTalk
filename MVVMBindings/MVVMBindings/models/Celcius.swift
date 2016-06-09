//
//  Celcius.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

struct Celcius: TemperatureConverter {
    var celcius: Double
    
    var degrees: Double {
        get {
            return celcius
        }
        set {
            celcius = newValue
        }
    }

    var formatted: String {
        return "\(degrees) °C"
    }
}
