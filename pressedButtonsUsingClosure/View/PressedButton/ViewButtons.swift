//
//  ViewButtons.swift
//  pressedButtonsUsingClosure
//
//  Created by Mohamed Samir on 12/15/19.
//  Copyright © 2019 Mohamed Samir. All rights reserved.
//

import UIKit

class ViewButtons: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet var CounterLB: UILabel!
///////////////////////////////////////////////////////////////////////////
    var counter = 0 {
        didSet{
            CounterLB.text = "\(counter)"
        }
    }
    enum Itiems : Int {
        case minus = 0
        case plus = 1
    }
    var didPressOnButton : ( (Itiems)->Void )?
//////////////////////////////////////////////////////////////////////////////
    required init?(coder aDecoder : NSCoder) {
        super.init(coder : aDecoder)
        commnInit()
        //CounterLB.text = "\(counter)"
    }
    
    func commnInit(){
        guard let NibView = Bundle.main.loadNibNamed("ViewButtons", owner: self, options: nil)?.first as? UIView else {return}
        NibView.frame = self.bounds
        self.addSubview(NibView)
        containerView = NibView
    }
//////////////////////////////////////////////////////////////////////////////////////
    @IBAction func buttonPressed(_ sender: UIButton) {
        if let selectedButton = Itiems(rawValue: sender.tag){
            
            switch selectedButton {
            case .minus:
                 counter -= 1
            case .plus:
                 counter += 1
            }
            
            didPressOnButton?(selectedButton)
        }
        
    }
    
}
