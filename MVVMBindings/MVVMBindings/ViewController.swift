//
//  ViewController.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    let viewModel = ViewControllerViewModel()
    let disposeBag = DisposeBag()

    @IBOutlet weak var celciusTextField: UITextField!
    @IBOutlet weak var farenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    @IBOutlet weak var rankineTextField: UITextField!
    @IBOutlet weak var newtonTextField: UITextField!
    @IBOutlet weak var réaumurTextField: UITextField!
    @IBOutlet weak var rømerTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.celciusTextValue.asObservable().subscribeNext {
            self.celciusTextField.text = $0
        }

        viewModel.farenheitTextValue.asObservable().subscribeNext {
            self.farenheitTextField.text = $0
        }

        viewModel.kelvinTextValue.asObservable().subscribeNext {
            self.kelvinTextField.text = $0
        }

        viewModel.newtonTextValue.asObservable().subscribeNext {
            self.newtonTextField.text = $0
        }

        viewModel.rankineTextValue.asObservable().subscribeNext {
            self.rankineTextField.text = $0
        }

        viewModel.réaumurTextValue.asObservable().subscribeNext {
            self.réaumurTextField.text = $0
        }

        viewModel.rømerTextValue.asObservable().subscribeNext {
            self.rømerTextField.text = $0
        }
    }

    @IBAction func celciusChanged(sender: UITextField) {
        self.viewModel.updateCelcius(sender.text)
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
}

