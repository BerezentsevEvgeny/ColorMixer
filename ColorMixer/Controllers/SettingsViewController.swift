//
//  ViewController.swift
//  ColorMixer
//
//  Created by Евгений Березенцев on 09.07.2021.
//

import UIKit

//protocol SettingsViewControllerDelegate {
//    func setViewColor(with color:)
//}

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var coloredView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSliderValue: UILabel!
    @IBOutlet weak var greenSliderValue: UILabel!
    @IBOutlet weak var blueSliderValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloredView.layer.cornerRadius = 10
        navigationController?.isNavigationBarHidden = true
        setColor()
        updateSliderValues()
    }

    @IBAction func sliderValueChanged() {
        updateSliderValues()
        setColor()
    }
    
    private func updateSliderValues() {
        redSliderValue.text = string(from: redSlider)
        greenSliderValue.text = string(from: greenSlider)
        blueSliderValue.text = string(from: blueSlider)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func setColor() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value),
                                              alpha: 1)
    }
    

    
}


