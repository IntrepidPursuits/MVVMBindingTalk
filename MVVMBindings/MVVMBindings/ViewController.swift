//
//  ViewController.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let viewModel = ViewControllerViewModel()

    @IBOutlet weak var celciusTextField: UITextField!
    @IBOutlet weak var farenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    @IBOutlet weak var rankineTextField: UITextField!
    @IBOutlet weak var newtonTextField: UITextField!
    @IBOutlet weak var réaumurTextField: UITextField!
    @IBOutlet weak var rømerTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(UITextField())
    }


    @IBAction func celciusChanged(sender: UITextField) {
        self.viewModel.updateCelcius(sender.text)
        updateUI(sender)
    }

    @IBAction func farenheitChanged(sender: UITextField) {
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

    func conditionalUpdate(valueString: String, updateTarget: UITextField, skipField: UITextField ) {
        if updateTarget != skipField {
            updateTarget.text = valueString
        }
    }

    func updateUI(skipField: UITextField) {
        conditionalUpdate(viewModel.celciusTextValue, updateTarget: celciusTextField, skipField: skipField)
        conditionalUpdate(viewModel.farenheitTextValue, updateTarget: farenheitTextField, skipField: skipField)
        conditionalUpdate(viewModel.kelvinTextValue, updateTarget: kelvinTextField, skipField: skipField)
        conditionalUpdate(viewModel.rankineTextValue, updateTarget: rankineTextField, skipField: skipField)
        conditionalUpdate(viewModel.newtonTextValue, updateTarget: newtonTextField, skipField: skipField)
        conditionalUpdate(viewModel.réaumurTextValue, updateTarget: réaumurTextField, skipField: skipField)
        conditionalUpdate(viewModel.rømerTextValue, updateTarget: rømerTextField, skipField: skipField)
    }
}

