//
//  AboutViewController.swift
//  TemperatureConverter
//
//  Created by Alise Sabanova on 04/08/2021.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var aboutTitle: UILabel!
    @IBOutlet weak var aboutDescription: UILabel!
    
    var titleAboutText = ""
    var descriptionAboutText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if !titleAboutText.isEmpty && !descriptionAboutText.isEmpty {
            aboutTitle.text = titleAboutText
            aboutDescription.text = descriptionAboutText
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
