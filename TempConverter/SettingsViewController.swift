//
//  SettingsViewController.swift
//  TempConverter
//
//  Created by veranika.trubovich on 01/05/2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelText()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func exitButtonTapped(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func openSettingTapped(_ sender: Any) {
        openSettings()
    }
    
    func openSettings(){
        guard let settingURL = URL(string: UIApplication.openSettingsURLString) else {return}
        
        if UIApplication.shared.canOpenURL(settingURL){
            UIApplication.shared.open(settingURL)
        }
    }
    
    func setLabelText(){
        var text = "Unable to set mode"
        if self.traitCollection.userInterfaceStyle == .dark{
            text = "Dark Mode"
        }else {
            text = "Light Mode"
        }
        nameLabel.text = text
            
    }
    
}
