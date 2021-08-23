//
//  ViewController.swift
//  ColorsApp
//
//  Created by Александр Крюков on 23.08.2021.
//  Copyright © 2021 Александр Крюков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLabel.text = String(format: "Red: %.2f", redSlider.value)
        greenLabel.text = String(format: "Green: %.2f", greenSlider.value)
        blueLabel.text = String(format: "Blue: %.2f", blueSlider.value)
        
        
    }
    @IBAction func redSliderAction() {
        redLabel.text = String(format: "Red: %.2f", redSlider.value)
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = String(format: "Green: %.2f", greenSlider.value)
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = String(format: "Blue: %.2f", blueSlider.value)
    }
    
    override func viewWillLayoutSubviews() {
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
}

