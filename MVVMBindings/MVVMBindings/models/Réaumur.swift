//
//  Réaumur.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

struct Réaumur: TemperatureConverter {
    var celcius: Double

    var degrees: Double {
        get {
            return celcius * (4.0/5.0)
        }
        
        set {
            celcius = newValue * (5.0/4.0)
        }
    }

    var formatted: String {
        return "\(degrees) °Ré"
    }
}
