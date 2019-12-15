//
//  ViewController.swift
//  pressedButtonsUsingClosure
//
//  Created by Mohamed Samir on 12/15/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var myView: ViewButtons!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myView.didPressOnButton = { itiems in
            switch itiems {
            case .minus:
                print("-----")
            case .plus:
                print("+++++")
            }
        }


    }
    
    
}

