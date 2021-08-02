//
//  ViewController.swift
//  TemperatureConverter
//
//  Created by Alise Sabanova on 02/08/2021.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var convertedTempLabel: UILabel!
    @IBOutlet weak var tempSegmentControl: UISegmentedControl!
    @IBOutlet weak var tempSlider: UISlider!{
        didSet{
            tempSlider.maximumValue = 100
            tempSlider.minimumValue = -50
            tempSlider.value = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertedTempLabel.text = "32 °F"
    }

    @IBAction func sliderValueChange(_ sender: Any) {
        print("tempSlider: ", tempSlider.value)
        updateTempLabelForSlider(value: tempSlider.value)
    }
    
    @IBAction func segmentValueChange(_ sender: UISegmentedControl) {
        updateTempLabelForSlider(value: tempSlider.value)
    }
    
    
    func updateTempLabelForSlider(value: Float) {
        let celsiusTemp = Int(value)
        celsiusLabel.text = "\(celsiusTemp) °C"

        var convertedTempString = ""
        switch tempSegmentControl.selectedSegmentIndex {
        case 0:
            let fahrenheitTempString = String(format: "%.2F",  convertTempFrom(celsius: celsiusTemp).fahrenheit)
            convertedTempString = fahrenheitTempString + " °F"
            
        default:
            let kelvinTempString = String(format: "%.2F",  convertTempFrom(celsius: celsiusTemp).kelvin)
            convertedTempString = kelvinTempString + " °K"
        }
        convertedTempLabel.text = convertedTempString
    }

    
    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double) {
        let fahrenheit = Double(celsius) * 9 / 5 + 32
        let kelvin = Double(celsius) + 273.15
        return (fahrenheit, kelvin)
    }
    
}

