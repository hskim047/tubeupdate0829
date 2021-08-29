//
//  SettingViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/08/02.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var nicknameTextfield: UITextField!
    @IBOutlet weak var nicknameLabel: UILabel!
    
    var result : String!
    
    
    @IBAction func editPressed(_ sender: Any) {
        performSegue(withIdentifier: "editProfile", sender: self)
    }
    @IBAction func profileSubmit(_ sender: Any) {
        result = nicknameTextfield.text
        nicknameLabel.text = "\(String(describing: result))"
        
    }

    
    override func viewDidLoad() {
    
        super.viewDidLoad()

    }

}
