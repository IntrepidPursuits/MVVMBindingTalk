//
//  ViewControllerViewModel.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/9/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation

final class ViewControllerViewModel {

    var celciusTextValue = ""
    var farenheitTextValue = ""
    var kelvinTextValue = ""
    var rankineTextValue = ""
    var newtonTextValue = ""
    var réaumurTextValue = ""
    var rømerTextValue = ""

    var tempConverters: [TemperatureConverter] = [
        Celcius(celcius: 0),
        Farenheit(celcius: 0),
        Kelvin(celcius: 0),
        Rankine(celcius: 0),
        Newton(celcius: 0),
        Réaumur(celcius: 0),
        Rømer(celcius: 0),
        ]

    func setValues() {
        celciusTextValue = tempConverters[0].formatted
        farenheitTextValue = tempConverters[1].formatted
        kelvinTextValue = tempConverters[2].formatted
        rankineTextValue = tempConverters[3].formatted
        newtonTextValue = tempConverters[4].formatted
        réaumurTextValue = tempConverters[5].formatted
        rømerTextValue = tempConverters[6].formatted
    }

    init() {
        setValues()
    }

    func updateCelcius(degrees: Double) {
        tempConverters[0].degrees = degrees

        for i in 1..<6 {
            tempConverters[i].celcius = degrees
        }

        setValues()
    }
}
