//
//  TemperatureConverter.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

protocol TemperatureConverter {
    var celcius: Double { get set }
    var degrees: Double { get set }
    var formatted: String { get }
}