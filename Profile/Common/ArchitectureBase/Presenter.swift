//
// Created by Piotr Guzia on 27/04/2020.
// Copyright (c) 2020 Piotr Guzia. All rights reserved.
//

import Foundation

class Presenter<View: AnyObject, Router: AnyObject>: ViewActionable {

    weak var view: View?
    weak var router: Router?

    func viewDidFinishLoading() { }
}
