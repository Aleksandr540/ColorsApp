//
//  ViewController.swift
//  ColorsApp
//
//  Created by Александр Крюков on 23.08.2021.
//  Copyright © 2021 Александр Крюков. All rights reserved.
//

import UIKit

class SettingsColorViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var color: UIColor!
    var delegate: SettingsViewControllerDelegate!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor()
        setValue(for: redLabel, greenLabel, blueLabel)
        color = colorView.backgroundColor ?? .red
    }
     
    @IBAction func rgbSlider(_ sender: UISlider) {
        setColor()
        switch sender {
        case redSlider:
            redLabel.text = string(from: redSlider)
        case greenSlider:
            greenLabel.text = string(from: greenSlider)
        default:
            blueLabel.text = string(from: blueSlider)
        }
    }
    
    @IBAction func doneAction() {
        view.endEditing(true)
        delegate.setMainColor(with: color ?? .red)
        dismiss(animated: true)
        print("JKBHAXKH")
    }
    
    private func setColor(){
        colorView.backgroundColor = UIColor(
                   red: CGFloat(redSlider.value),
                   green: CGFloat(greenSlider.value),
                   blue: CGFloat(blueSlider.value),
                   alpha: 1
               )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(from: redSlider)
            case greenLabel:
                greenLabel.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
        }
        }
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

