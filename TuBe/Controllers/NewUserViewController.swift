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
    
    @IBOutlet weak var enterInvitationCode: UILabel!
    @IBOutlet weak var typeInvitationCode: UITextField!
    @IBOutlet weak var connectButton: UIButton!
    
    @IBAction func teacherPressed(_ sender: Any) {
        performSegue(withIdentifier: "newTeacher", sender: self)
    }
    @IBAction func studentPressed(_ sender: Any) {
        enterInvitationCode.text = "선생님께 받은 초대 코드를 입력하세요!"
        typeInvitationCode.placeholder = "초대번호 5자리"
        connectButton.setImage(image1, for: .normal)
    }
    
    @IBAction func parentPressed(_ sender: Any) {
        enterInvitationCode.text = "선생님께 받은 초대 코드를 입력하세요!"
        typeInvitationCode.placeholder = "초대번호 5자리"
        connectButton.setImage(image3, for: .normal)
    }
    
    @IBOutlet weak var className: UITextField!
    @IBOutlet weak var classLocation: UITextField!
    
    @IBAction func connectButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "newTeacher", sender: self)
    }
    
    }
/*
    class CardTableViewCell: UITableViewCell {

    var name = " "
    var subject = " "
    var time = " "
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var background: UIView!
   
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    convenience init(nameLabel: String, subjectLabel: String, timeLabel:String) {
        self.init()
        self.name = nameLabel
        self.subject = subjectLabel
        self.time = timeLabel
        
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        background.layer.cornerRadius = background.frame.size.height/5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
}*/

    

