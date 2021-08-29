//
//  NewUserViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/31.
//

import UIKit

class NewUserViewController: UIViewController {
    
    let image1 = UIImage(named: "선생님과 버튼 연결")
    let image2 = UIImage(named: "학생과 버튼 연결")
    let image3 = UIImage(named: "선생님과 버튼 연결-1")
    
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
        case 0: // 학생
            enterInvitationCode.text = "선생님께 받은 초대 코드를 입력하세요!"
            typeInvitationCode.placeholder = "초대번호 5자리"
            connectButton.setImage(image1, for: .normal)

        case 1: // 선생님
            enterInvitationCode.text = "수업명과 학생명을 입력하세요!"
            typeInvitationCode.placeholder = "Ex: 영어 김예원"
            connectButton.setImage(image2, for: .normal)
            
        case 2: // 학부모
            enterInvitationCode.text = "선생님께 받은 초대 코드를 입력하세요!"
            typeInvitationCode.placeholder = "초대번호 5자리"
            connectButton.setImage(image3, for: .normal)

        default:
            break
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
