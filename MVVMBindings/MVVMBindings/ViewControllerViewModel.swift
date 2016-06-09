//
//  ViewControllerViewModel.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/9/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import Foundation
import RxSwift

final class ViewControllerViewModel {
    let disposeBag = DisposeBag()

    let celciusTextValue = Variable<String>("")
    let farenheitTextValue = Variable<String>("")
    let kelvinTextValue = Variable<String>("")
    let rankineTextValue = Variable<String>("")
    let newtonTextValue = Variable<String>("")
    let réaumurTextValue = Variable<String>("")
    let rømerTextValue = Variable<String>("")

    var vars: [Variable<String>] = []

    var tempConverters: [TemperatureConverter] = [
        Celcius(celcius: 0),
        Farenheit(celcius: 0),
        Kelvin(celcius: 0),
        Rankine(celcius: 0),
        Newton(celcius: 0),
        Réaumur(celcius: 0),
        Rømer(celcius: 0),
        ]

    func setTextValues(skip: Int) {
        for i in 0..<7 {
            if i != skip {
                vars[i].value = tempConverters[i].formatted
            }
        }
    }

    func setNumericValues(reference: Int) {
        for i in 0..<7 {
            if i != reference {
                tempConverters[i].celcius = tempConverters[reference].celcius
            }
        }
    }

    init() {
        vars.append(celciusTextValue)
        vars.append(farenheitTextValue)
        vars.append(kelvinTextValue)
        vars.append(rankineTextValue)
        vars.append(newtonTextValue)
        vars.append(réaumurTextValue)
        vars.append(rømerTextValue)

        setTextValues(-1)

        celciusTextValue.asObservable().subscribeNext {
            self.updateCelcius($0)
        }.addDisposableTo(disposeBag)
    }

    private func updateValue(text: String?, handler: Double -> Void) {
        if let textValue = text, let degrees = Double(textValue) {
            handler(degrees)
        }
    }

    func updateCelcius(degrees: String?) {
        updateValue(degrees) {
            self.tempConverters[0].degrees = $0
        }
        setNumericValues(0)
        setTextValues(0)
    }
}
