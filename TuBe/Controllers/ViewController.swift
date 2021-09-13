//
//  ViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateButton: UIButton!
    @IBOutlet weak var countButton: UIButton!
    @IBAction func dateButtonPressed(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    

    


}
