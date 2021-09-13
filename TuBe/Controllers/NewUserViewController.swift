//
//  NewUserViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/31.
//

import UIKit

class inputCard : UITableViewCell {
    
}
class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var inputArray: [CardTableViewCell] = []

    let cellSpacingHeight: CGFloat = 15
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cardIdentifier, for: indexPath) as! CardTableViewCell
        cell.nameLabel.text = "rlagytj"
        cell.subjectLabel.text = "math"
        return cell
    }
    
    
   /* func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // note that indexPath.section is used rather than indexPath.row
            print("You tapped cell number \(indexPath.section).")
        }
    */
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setImage(#imageLiteral(resourceName: "추가 버튼"), for: .normal)
        button.addTarget(self,action:#selector(buttonTouched),
                         for:.touchUpInside)

        let footerView = UIView()
        footerView.backgroundColor = .white
        footerView.addSubview(button)
        button.centerXAnchor.constraint(equalTo: footerView.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: footerView.centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 134).isActive = true
        button.widthAnchor.constraint(equalToConstant: 335).isActive = true
        return footerView
    }

    @objc func buttonTouched(sender:UIButton!){
    performSegue(withIdentifier: "goToNewClass", sender: self)
    }

    
    @IBOutlet weak var cardTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardTableView.delegate = self
        cardTableView.dataSource = self
        
        cardTableView.register(UINib(nibName: K.cardNibName, bundle: nil), forCellReuseIdentifier: K.cardIdentifier)
   
        
    }
class ClassFooterCell : UITableViewCell{
        
    @IBOutlet weak var footerImage: UITableViewCell!
    
        
    }
    
    
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
    
    
    }

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
        
        nameLabel.text
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        background.layer.cornerRadius = background.frame.size.height/5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
}

    
}


