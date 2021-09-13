//
//  HomeViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/09/02.
//
/*
import UIKit

class inputCard : UITableViewCell {
    
}
class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellSpacingHeight: CGFloat = 15
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cardIdentifier, for: indexPath) as! CardTableViewCell
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            // note that indexPath.section is used rather than indexPath.row
            print("You tapped cell number \(indexPath.section).")
        }
    
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
    
    class Card : UITableViewCell {
        
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
*/
