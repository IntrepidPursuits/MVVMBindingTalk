//
//  ViewController.swift
//  MVVMBindings
//
//  Created by Vincent Toms on 6/6/16.
//  Copyright © 2016 intrepid. All rights reserved.
//

import UIKit
import RxSwift
import Intrepid



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

        celciusTextField.rx_text <-> viewModel.celciusTextValue >>> disposeBag
        farenheitTextField.rx_text <-> viewModel.farenheitTextValue >>> disposeBag
        kelvinTextField.rx_text <-> viewModel.kelvinTextValue >>> disposeBag
        newtonTextField.rx_text <-> viewModel.rankineTextValue >>> disposeBag
        rankineTextField.rx_text <-> viewModel.rankineTextValue >>> disposeBag
        réaumurTextField.rx_text <-> viewModel.réaumurTextValue >>> disposeBag
        rømerTextField.rx_text <-> viewModel.rømerTextValue >>> disposeBag
    }
}

