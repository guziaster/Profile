//
// Created by Piotr Guzia on 27/04/2020.
// Copyright (c) 2020 Piotr Guzia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var presenter: ViewActionable!

    override func viewDidLoad() {
        presenter.viewDidFinishLoading()
        super.viewDidLoad()
    }
}