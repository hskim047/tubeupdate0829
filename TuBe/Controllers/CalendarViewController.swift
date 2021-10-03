//
//  CalenderViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/09.
//

import UIKit
import FSCalendar
  
class CalendarViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    
    var datesWithClass = [ ] as [String]
    var days = [] as [Int]
    var firstdate: String = ""
    @IBOutlet weak var calendar: FSCalendar!
    
    
    
    fileprivate let gregorian = Calendar(identifier: .gregorian)
    fileprivate let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    @IBAction func datePicked(_ sender: UIDatePicker) {
        let datePickerView = sender
        formatter.dateFormat = "yyyy-MM-dd" // formatter의 dateFormat 속성을 설정
        firstdate = formatter.string(from:datePickerView.date)
        print(firstdate)
        daysArray()
        
      
    }
    
    @IBOutlet weak var monday: UIButton!
    @IBOutlet weak var tuesday: UIButton!
    @IBOutlet weak var wednesday: UIButton!
    @IBOutlet weak var thursday: UIButton!
    @IBOutlet weak var friday: UIButton!
    @IBOutlet weak var saturday: UIButton!
    @IBOutlet weak var sunday: UIButton!
    
    @IBAction func mondayButton(_ sender: Any) {
        days.append(1)
        monday.backgroundColor = UIColor.blue
    }
    @IBAction func tuesdayButton(_ sender: Any) {
        days.append(2)
        tuesday.backgroundColor = UIColor.blue

    }
    @IBAction func wednesdayButton(_ sender: Any) {
        days.append(3)
        wednesday.backgroundColor = UIColor.blue

    }
    @IBAction func thursdayButton(_ sender: Any) {
        days.append(4)
        thursday.backgroundColor = UIColor.blue

    }
    @IBAction func fridayButton(_ sender: Any) {
        days.append(5)
        friday.backgroundColor = UIColor.blue

    }
    @IBAction func saturdayButton(_ sender: Any) {
        days.append(6)
        saturday.backgroundColor = UIColor.blue

    }
    @IBAction func sundayButton(_ sender: Any) {
        days.append(7)
        sunday.backgroundColor = UIColor.blue

    }
    
    // 수업 첫 날을 datePicker 로 선택하여 firstdate라는 변수에 지정

    func daysArray(){
        days.sort()
        print(days)
        getSecondClassDate()
        addSevenDays()
        calendar.reloadData()
    }
    // ? firstdate 를 firstClassString에 넣어주기 ??
    
    //첫 번째 수업 날짜는 기입 ex) 2021-09-21 화요일
    //수업 요일 기입 ex) 화목 => 화 +2 = 목1
    // --> 이거를 해야됨! 첫 번째 날짜로부터 요일을 얻어내고, 그 요일과 두번째 수업 요일 사이의 차를 계산한다음 그걸 날짜(숫자)에 다시 더하는 방식!
    // --> 예) 화요일 = 2로 지정, 목요일은 4로 지정, 4-2 = 2니까 21일에 +2를 해서 23일을 만드는 과정!
    //두 번째 수업 날짜는 계산을 통해서 얻어짐
    //첫 번째 수업 날짜, 두 번째 수업 날짜에다가 +7씩 해서 array 받아오기
    
    
    func getSecondClassDate() {
        let firstClassString = firstdate // firstdate 가 되어야 함
        print(firstClassString)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?

        let firstClassDate:Date = formatter.date(from: firstClassString)! // String -> Date
        let nDaysLater = Calendar.current.date(byAdding: .day, value: days[1]-days[0], to: firstClassDate)
        let secondClassString = self.formatter.string(from: nDaysLater!) //date-> String
        print(secondClassString)
        datesWithClass.append(firstClassString)
        datesWithClass.append(secondClassString)
        print(datesWithClass)
    }
    // string -> date 로 바꿔서 요일만큼 days 추가하기
    
    
    func addSevenDays() {
        
        for i in 1...4{ //몇개 단위로 볼건지에 따라서 요 범위가 달라질듯!
            
            var twodatesWithClass = [ ] as [String]
            
            for i in 0...1 {
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd"
                formatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?
                let classdate:Date = (formatter.date(from: datesWithClass.reversed()[i]))! //String -> date
                _ = self.formatter.string(from: classdate)
                let sevenDaysLater = Calendar.current.date(byAdding: .day, value: 7, to: classdate)
                let sevenDaysLaterString = self.formatter.string(from: sevenDaysLater!) //date-> String
                twodatesWithClass.append(sevenDaysLaterString)
                }
            datesWithClass = datesWithClass + twodatesWithClass
            }
        print(datesWithClass as Any)

    }
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
        
        let dateString = self.formatter.string(from: date)
        if self.datesWithClass.contains(dateString){
            return 1
        }
        return 0
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        calendar.delegate = self
        calendar.dataSource = self
            
            calendar.headerHeight = 50
            calendar.appearance.headerMinimumDissolvedAlpha = 0.0
            calendar.appearance.headerDateFormat = "YYYY년 M월"
            calendar.appearance.headerTitleColor = .black
            calendar.appearance.headerTitleFont = UIFont.systemFont(ofSize: 24)

            calendar.calendarWeekdayView.weekdayLabels[0].text = "일"
            calendar.calendarWeekdayView.weekdayLabels[1].text = "월"
            calendar.calendarWeekdayView.weekdayLabels[2].text = "화"
            calendar.calendarWeekdayView.weekdayLabels[3].text = "수"
            calendar.calendarWeekdayView.weekdayLabels[4].text = "목"
            calendar.calendarWeekdayView.weekdayLabels[5].text = "금"
            calendar.calendarWeekdayView.weekdayLabels[6].text = "토"
        
        calendar.scrollEnabled = true
        calendar.scrollDirection = .vertical
    
    }
}


        
/*
 func addSevenDays() {
     for i in 1...4{ //몇개 단위로 볼건지에 따라서 요 범위가 달라질듯!
         
         
         for dates in datesWithClass {
             let formatter = DateFormatter()
             formatter.dateFormat = "yyyy-MM-dd"
             formatter.timeZone = NSTimeZone(name: "UTC") as TimeZone?

             let classdate:Date = (formatter.date(from: dates))! //String -> date
             
             _ = self.formatter.string(from: classdate)
             let sevenDaysLater = Calendar.current.date(byAdding: .day, value: 7, to: classdate)
             let sevenDaysLaterString = self.formatter.string(from: sevenDaysLater!) //date-> String
             datesWithClass.append(sevenDaysLaterString)
            
             }
         }
     print(datesWithClass as Any)

 }
 */
