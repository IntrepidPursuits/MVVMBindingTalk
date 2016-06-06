//
//  Newton.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

struct Newton: TemperatureConverter {
    var celcius: Double

    var degrees: Double {
        get {
            return celcius * (33.0/100.0)
        }
        
        set {
            celcius = newValue * (100.0/33.0)
        }
    }

    var formatted: String {
        return "\(degrees) °N"
    }
}
