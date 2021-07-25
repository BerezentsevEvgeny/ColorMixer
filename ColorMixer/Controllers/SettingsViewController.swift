//
//  ViewController.swift
//  ColorMixer
//
//  Created by Евгений Березенцев on 09.07.2021.
//

import UIKit



class SettingsViewController: UIViewController {
    
    @IBOutlet weak var coloredView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UILabel!
    
    var delegate: SettingsViewControllerDelegate?
    var newColor: UIColor?
    var red: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloredView.layer.cornerRadius = 10
        coloredView.backgroundColor = newColor
        updateSliderLabels()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let red = red else { return }
        setSliderValues(red: red)
    }

    @IBAction func sliderValueChanged() {
        updateSliderLabels()
        updateColor()
    }
    @IBAction func doneButtonTapped() {
        let colorToSet = UIColor(red: CGFloat(redSlider.value),
                                 green: CGFloat(greenSlider.value),
                                 blue: CGFloat(blueSlider.value),
                                 alpha: 1)
        delegate?.setViewColor(with: colorToSet)
        delegate?.setSliderValue(red: redSlider.value)
    }
    
    private func updateSliderLabels() {
        redSliderLabel.text = string(from: redSlider)
        greenSliderLabel.text = string(from: greenSlider)
        blueSliderLabel.text = string(from: blueSlider)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private  func updateColor() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                              green: CGFloat(greenSlider.value),
                                              blue: CGFloat(blueSlider.value),
                                              alpha: 1)
    }
    
    func setSliderValues(red: Float) {
        redSlider.value = red
//        greenSlider.value = green
//        blueSlider.value = blue
    }
    

    
}


