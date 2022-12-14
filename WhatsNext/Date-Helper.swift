//
//  Date-Helper.swift
//  WhatsNext
//
//  Created by Luca Capriati on 2022/08/21.
//

import Foundation

extension Date {
    static var startOfToday: Date {
        Calendar.current.startOfDay(for: Date.now)
    }
    
    static var endOfToday: Date {
        startOfToday.offsetBy(days: 1, seconds: -1)
    }
    
    static var startOfTomorrow: Date {
        startOfToday.offsetBy(days: 1, seconds: 0)
    }
    
    static var endOfTomorrow: Date {
        startOfToday.offsetBy(days: 2, seconds: -1)
    }
    
    static var startOfLater: Date {
        startOfToday.offsetBy(days: 2, seconds: 0)
    }
    
    static var endOfLater: Date {
        startOfToday.offsetBy(days: 7, seconds: 0)
    }
    
    func offsetBy(days: Int, seconds: Int) -> Date {
        var components = DateComponents()
        components.day = days
        components.second = seconds
        
        return Calendar.current.date(byAdding: components, to: self) ?? self
    }
}
