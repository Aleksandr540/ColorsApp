//
//  FirstViewController.swift
//  ColorsApp
//
//  Created by Александр Крюков on 06.09.2021.
//  Copyright © 2021 Александр Крюков. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setMainColor(with color: UIColor)
}

class FirstViewController: UIViewController {
    
    private var color = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
    }

}

extension FirstViewController: SettingsViewControllerDelegate {
    func setMainColor(with color: UIColor) {
        view.backgroundColor = color
        self.color = color
    }
}


