//
//  ChatlistViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/09/05.
//

import UIKit

class ChatTableViewController: UITableViewCell{
    
    
}
class ChatlistViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellSpacingHeight: CGFloat = 15
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.listIdentifier, for: indexPath) as! ChatTableViewCell
        
        return cell
    }
    

    @IBOutlet weak var chatTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        chatTableView.register(UINib(nibName: K.listNibName, bundle: nil), forCellReuseIdentifier: K.listIdentifier)
   
        
        // Do any additional setup after loading the view.
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
