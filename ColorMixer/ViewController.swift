//
//  ViewController.swift
//  ColorMixer
//
//  Created by Евгений Березенцев on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
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
    }

    @IBAction func sliderValueChanged() {
        updateColors()
    }
    
    private func updateColors() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        redSliderValue.text = String(round(redSlider.value * 100) / 100)
        greenSliderValue.text = String(round(greenSlider.value * 100) / 100)
        blueSliderValue.text = String(round(blueSlider.value * 100) / 100)
        
        coloredView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
}

