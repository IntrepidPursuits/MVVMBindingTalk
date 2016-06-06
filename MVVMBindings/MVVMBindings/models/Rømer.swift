//
//  Rømer.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

struct Rømer: TemperatureConverter {
    var celcius: Double

    var degrees: Double {
        get {
            return celcius * (21.0/40.0) + 7.5
        }

        set {
            celcius = (newValue - 7.5) * (40.0/21.0)
        }
    }

    var formatted: String {
        return "\(degrees) °Rø"
    }
}
