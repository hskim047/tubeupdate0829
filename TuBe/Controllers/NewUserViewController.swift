//
//  NewUserViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/31.
//

import UIKit

class NewUserViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var enterInvitationCode: UILabel!
    @IBOutlet weak var typeInvitationCode: UITextField!
    @IBOutlet weak var connectButton: UIButton!
    
    @IBAction func connectPressed(_ sender: Any) {
        performSegue(withIdentifier: "newUserFormed", sender: (Any).self)
    }
    
    @IBAction func userpick(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex
            {
            case 0:
                enterInvitationCode.text = "초대 코드 입력"
                typeInvitationCode.placeholder = "초대번호 5자리"
                connectButton.setTitle("연결", for: .normal)

            case 1:
                enterInvitationCode.text = "수업명과 학생명 입력"
                typeInvitationCode.placeholder = "Ex: 영어 김예원"
                connectButton.setTitle("생성", for: .normal)
                
            case 2:
                enterInvitationCode.text = "초대 코드 입력"
                typeInvitationCode.placeholder = "초대번호 5자리"
                connectButton.setTitle("연결", for: .normal)

            default:
                break
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
