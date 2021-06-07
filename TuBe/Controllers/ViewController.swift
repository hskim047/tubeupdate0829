//
//  ViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/08.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
    
    }
    @IBAction func TeacherPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToTeacherHome", sender: self)
    }

    


}
