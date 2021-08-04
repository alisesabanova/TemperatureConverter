//
//  ThemeViewController.swift
//  TemperatureConverter
//
//  Created by Alise Sabanova on 04/08/2021.
//

import UIKit

class ThemeViewController: UIViewController {
    
    @IBOutlet weak var textTitle: UILabel!
    @IBOutlet weak var textDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func settingsButtonTapped(_ sender: Any) {
        openSettings()        
    }
    
    
    func setLabelText() {
        var labelText = "Theme"
        var descriptionText = "Change appearence in your device's settings to change the theme."
    
        if self.traitCollection.userInterfaceStyle == .dark {
            labelText = "Dark mode active"
            descriptionText = "To switch to light mode, use the button bellow."
        } else {
            labelText = "Light mode active"
            descriptionText = "To switch to dark mode, use the button bellow."
        }
        textTitle.text = labelText
        textDescription.text = descriptionText
    }

    func openSettings() {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        if UIApplication.shared.canOpenURL(settingsURL) {
            UIApplication.shared.open(settingsURL, options: [:]) {success in print("Success", success)
                
            }
        }
    }
    
    
      
    
}


extension ThemeViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        setLabelText()
    }
}
