//
//  ViewController.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tempConverters: [TemperatureConverter] = [
                           Celcius(celcius: 0),
                           Farenheit(celcius: 0),
                           Kelvin(celcius: 0),
                           Rankine(celcius: 0),
                           Newton(celcius: 0),
                           Réaumur(celcius: 0),
                           Rømer(celcius: 0),
                         ]

    @IBOutlet weak var celciusTextField: UITextField!
    @IBOutlet weak var farenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    @IBOutlet weak var rankineTextField: UITextField!
    @IBOutlet weak var newtonTextField: UITextField!
    @IBOutlet weak var réaumurTextField: UITextField!
    @IBOutlet weak var rømerTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func celciusChanged(sender: UITextField) {
        if let textValue = sender.text,let degrees = Double(textValue) {
            tempConverters[0].degrees = degrees

            tempConverters[1].celcius = degrees
            tempConverters[2].celcius = degrees
            tempConverters[3].celcius = degrees
            tempConverters[4].celcius = degrees
            tempConverters[5].celcius = degrees
            tempConverters[6].celcius = degrees
        }

        farenheitTextField.text = tempConverters[1].formatted
        kelvinTextField.text = tempConverters[2].formatted
        rankineTextField.text = tempConverters[3].formatted
        newtonTextField.text = tempConverters[4].formatted
        réaumurTextField.text = tempConverters[5].formatted
        rømerTextField.text = tempConverters[6].formatted
    }

    @IBAction func farenheitChanged(sender: UITextField) {
        if let textValue = sender.text,let degrees = Double(textValue) {
            tempConverters[1].degrees = degrees
        }

        celciusTextField.text = tempConverters[0].formatted
        kelvinTextField.text = tempConverters[2].formatted
        rankineTextField.text = tempConverters[3].formatted
        newtonTextField.text = tempConverters[4].formatted
        réaumurTextField.text = tempConverters[5].formatted
        rømerTextField.text = tempConverters[6].formatted
    }

    @IBAction func kelvinChanged(sender: UITextField) {
    }

    @IBAction func rankineChanged(sender: UITextField) {
    }

    @IBAction func newtonChanged(sender: UITextField) {
    }

    @IBAction func réaumurChanged(sender: UITextField) {
    }

    @IBAction func rømerChanged(sender: UITextField) {
    }

    func updateUI() {
        celciusTextField.text = tempConverters[0].formatted
        farenheitTextField.text = tempConverters[1].formatted
        kelvinTextField.text = tempConverters[2].formatted
        rankineTextField.text = tempConverters[3].formatted
        newtonTextField.text = tempConverters[4].formatted
        réaumurTextField.text = tempConverters[5].formatted
        rømerTextField.text = tempConverters[6].formatted
    }
}

