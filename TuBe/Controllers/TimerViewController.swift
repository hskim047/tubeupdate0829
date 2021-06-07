//
//  TimerViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/24.
//

import UIKit
import AVFoundation

class TimerViewController: UIViewController {

    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var timerSet: UITextField!
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0    
  
    @IBAction func start(_ sender: UIButton) {
        progressBar.progress = 0.0
        let totalTime = Int(timerSet.text!)
        print(totalTime!)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        
    }
    
    
    @objc func updateTimer() {
        if totalTime>0 {
            totalTime -= 1
            time.text = String(totalTime)
        } else {
            timer.invalidate()
            time.text = "끝!"
        }

}
}
