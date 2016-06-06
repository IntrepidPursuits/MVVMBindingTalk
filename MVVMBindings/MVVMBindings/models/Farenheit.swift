//
//  Farenheit.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

struct Farenheit: TemperatureConverter {
    var celcius: Double

    var degrees: Double {
        get {
            return (celcius*(9.0/5.0)) + 32.0
        }
        
        set {
            celcius = (newValue-32.0) * (5.0/9.0)
        }
    }

    var formatted: String {
        return "\(degrees) °F"
    }
}
