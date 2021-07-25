//
//  MainViewController.swift
//  ColorMixer
//
//  Created by Евгений Березенцев on 23.07.2021.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setViewColor(with color: UIColor)
    func setSliderValue(red: Float)
}

class MainViewController: UIViewController {
    
    var redValue: Float?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.newColor = view.backgroundColor
        guard let redValue = redValue else { return }
        settingsVC.red = redValue
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }

}

extension MainViewController: SettingsViewControllerDelegate {
    func setSliderValue(red: Float) {
        redValue = red
    }
 
    
    func setViewColor(with color: UIColor) {
        view.backgroundColor = color
    }
    

}
