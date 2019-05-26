//
//  Constants.swift
//  CalendarControll
//
//  Created by Ketan Chopda on 10/01/19.
//  Copyright © 2019 Simform solution. All rights reserved.
//

import Foundation
import UIKit

/// Dateformats
struct SSDateFormat {
    static let shortMonth = "LLL"
    static let fullMonth = "LLLL"
    static let ddMMyyyy = "ddMMyyyy"
}

/// Week start day (default is monday)
///
/// - sunday: Sunday
/// - monday: Monday
public enum WeekStartDay {
    case sunday
    case monday
}

/// This function returns total number of days for month
///
/// - Parameters:
///   - year: year
///   - month: month
/// - Returns: total days in month
func getNumberOfDays(year: Int, month: Int) -> Int {
    let dateComponents = DateComponents(year: year, month: month)
    let calendar = Calendar.current
    if let date = calendar.date(from: dateComponents), let range = calendar.range(of: .day, in: .month, for: date) {
        return range.count
    }
    return 0
}

/// Week days
enum WeekDays {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    
    /// Short Name for week day
    var shortName: String {
        switch self {
        case .sunday:
            return "SUN"
        case .monday:
            return "MON"
        case .tuesday:
            return "TUE"
        case .wednesday:
            return "WED"
        case .thursday:
            return "THU"
        case .friday:
            return "FRI"
        case .saturday:
            return "SAT"
        }
    }
}

/// Helper function for return count to skip for display
///
/// - Parameter weekDayNo: Int value for week day number
///   - startDay: Week start day
/// - Returns: Returns count to skeep
func getSkeepCount(_ weekDayNo: Int, startDay: WeekStartDay) -> Int {
    switch startDay {
    case .sunday:
        return getCountForSunday(weekDayNo)
    case .monday:
        return getCountForMonday(weekDayNo)
    }
}

/// Get skeep count for monday
fileprivate func getCountForMonday(_ weekDayNo: Int) -> Int {
    switch weekDayNo {
    case 1:
        return 6
    case 2:
        return 0
    case 3:
        return 1
    case 4:
        return 2
    case 5:
        return 3
    case 6:
        return 4
    case 7:
        return 5
    default:
        return 0
    }
}

/// Get skeep count for monday
fileprivate func getCountForSunday(_ weekDayNo: Int) -> Int {
    switch weekDayNo {
    case 1:
        return 0
    case 2:
        return 1
    case 3:
        return 2
    case 4:
        return 3
    case 5:
        return 4
    case 6:
        return 5
    case 7:
        return 6
    default:
        return 0
    }
}

/// Global constants
public struct SSConstants {
    public static let todayDate = Date()
}

/// SSCalendarView configuration
public class SSCalendarConfiguration {
    
    /// Previous day text color
    public var previousDayTextColor: UIColor = UIColor.black
    
    /// Previous day border color
    public var previousDayBorderColor: UIColor = UIColor.black
    
    /// Previous day backgound color
    public var previousDayBackgroundColor: UIColor = UIColor(red: 255.0/255.0, green: 229.0/255.0, blue: 204.0/255.0, alpha: 1.0)
    
    /// Selected day text color
    public var selectedDayTextColor: UIColor = UIColor.black
    
    /// Selected background text color
    public var selectedDayBackGroudColor: UIColor = UIColor.lightGray
    
    /// Selected border text color
    public var selectedDayBorderColor = UIColor.black
    
    /// Upcoming daye text color
    public var upcomingDayTextColor: UIColor = UIColor.black
    
    /// Upcoming day background color
    public var upcomingDayBackgroundColor: UIColor = UIColor.white
    
    /// Upcoming day border color
    public var upcomingDaysBorderColor: UIColor = UIColor.black
    
    /// Current day text color
    public var currentDayTextColor: UIColor = UIColor.red
    
    /// Current day background color
    public var currentDayBackgroundColor: UIColor = UIColor.white
    
    /// Current day border color
    public var currentDayBorderColor: UIColor = UIColor.black
    
    /// Day label font
    public var dayLabelFont: UIFont = UIFont.systemFont(ofSize: 17)
    
    /// Month description label font
    public var monthLabelFont: UIFont = UIFont.systemFont(ofSize: 17)
    
    /// Month label text color
    public var monthLabelTextColor: UIColor = UIColor.black
    
    /// Week day name label font
    public var weekDayLabelFont: UIFont = UIFont.systemFont(ofSize: 17)
    
    /// Week day label text color
    public var weekDayLabelTextColor: UIColor = UIColor.black
    
    /// Week day label background color
    public var weekDayLabelBackgroundColor: UIColor = UIColor(red: 80.0/225.0, green: 144.0/255.0, blue: 207.0/255.0, alpha: 1.0)
    
    /// Week day border color
    public var weekDayBorderColor: UIColor = UIColor.black
    
    /// Should round days cell
    public var shouldRoundDaysView: Bool = true
    
    /// Monthview bottom line color
    public var monthViewBottomLineColor: UIColor = UIColor(red: 208.0/225.0, green: 211.0/255.0, blue: 212.0/255.0, alpha: 1.0)
    
    /// Monthview background color
    public var monthViewBackgroundColor: UIColor = UIColor.white
}
