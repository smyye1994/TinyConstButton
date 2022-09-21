//
//  ViewController.swift
//  TinyConstButton
//
//  Created by Sümeyye Kılıçoğlu on 16.09.2022.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {
    let iconTextButton = OneLinedButton()
    let twoLineButton = TwoLinedButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(twoLineButton)
        twoLineButton.configure(with: TwoLinedButtonViewModel(
            primaryText: "Start Free Trial",
            secondaryText: "3 days free, then $1.99/mo."))
        twoLineButton.center(in: view)
        twoLineButton.leftToSuperview().constant = 35
        twoLineButton.rightToSuperview().constant = -35
        twoLineButton.width(300)
        twoLineButton.height(55)
        
        
        
        view.addSubview(iconTextButton)
        iconTextButton.configure(with: IconTextButtonViewModel(
            text: "Book Flight",
            image: UIImage(systemName: "airplane"),
            backgroundColor: .link))
        
        iconTextButton.topToSuperview().constant = 55
        iconTextButton.rightToSuperview().constant = -35
        iconTextButton.leftToSuperview().constant = 35
        iconTextButton.width(300)
        iconTextButton.height(55)
        
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask { return .portrait }
    override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      UIView.setAnimationsEnabled(false)
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
      UIView.setAnimationsEnabled(true)
    }
}

