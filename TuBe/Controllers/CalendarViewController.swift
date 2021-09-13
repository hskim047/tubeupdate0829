//
//  CalenderViewController.swift
//  TuBe
//
//  Created by 김효서✨ on 2021/05/09.
//

import UIKit
import EventKit
import FSCalendar
import EventKitUI

class EKRecurrenceDayOfWeek : NSObject{
    let eventstore = EKEventStore()
    let dateFormatter = DateFormatter()

    func createNewCalendar(withName name: String) {
        let calendar = EKCalendar()
        calendar.title = name
        calendar.cgColor = UIColor.purple.cgColor

    }
    
    
    


    
}


class CalendarViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {

    
    @IBOutlet weak var calendar: FSCalendar!
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        calendar.delegate = self
        calendar.dataSource = self
        
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
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
    
    func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {

        dateFormatter.dateFormat = "EEEE-MM-yyyy"
        
        guard let eventDate = dateFormatter.date(from: "Thursday-08-2021") else {return 0}
        if date.compare(eventDate) == .orderedSame {
            return 1
            print(eventDate)
        }
        return 0
    }
    
    func getDayOfWeek(weekday:Int) -> String {
            if(weekday == 1) {
                return "Sunday"
            }
            else if(weekday == 2) {
                return "Monday"
            }
            else if(weekday == 3) {
                return "Tuesday"
            }
            else if(weekday == 4) {
                return "Wednesday"
            }
            else if(weekday == 5) {
                return "Thursday"
            }
            else if(weekday == 6) {
                return "Friday"
            }
            else {
                return "Saturday"
            }

        }
    /*func formattedDaysInThisWeek() -> [String] {
        // create calendar
        let calendar = NSCalendar(identifier: NSCalendar.Identifier.gregorian)!

        // today's date
        let today = NSDate()
        let todayComponent = calendar.components([.day, .month, .year], from: today as Date)

        // range of dates in this week
        let thisWeekDateRange = calendar.range(of: .day, in:.weekOfYear, for:today as Date)

        // date interval from today to beginning of week
        let dayInterval = thisWeekDateRange.location - todayComponent.day!

        // date for beginning day of this week, ie. this week's Sunday's date
        let beginningOfWeek = calendar.date(byAdding: .day, value: dayInterval, to: today as Date, options: .matchNextTime)

        var formattedDays: [String] = []

        for i in 0 ..< thisWeekDateRange.length {
            let date = calendar.date(byAdding: .day, value: i, to: beginningOfWeek!, options: .matchNextTime)!
            formattedDays.append(formatDate(date: date as NSDate))
        }

        return formattedDays
    }

    func formatDate(date: NSDate) -> String {
        let format = "EEE MMMdd"
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: date as Date)
    }
    /*func checkMonday(today:Date) ->Bool{
        var DayExist:Bool
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)
        let components = calendar!.components([.weekday], from: today)
        
        if components.weekday == 2{
            print("Monday")
            DayExist = false
        }
        else { DayExist = true }
        return DayExist
    }
    */*/
}

