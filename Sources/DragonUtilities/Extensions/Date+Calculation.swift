//
//  Date+Calculation.swift
//
//
//  Created by Drag0ndust on 11.12.23.
//

import Foundation

public extension Date {
    /// Convenience method to get date components from the date
    /// - Parameters:
    ///   - dateComponents: Set of components, which should be retrieved
    ///   - calendar: Calendar used to get the components
    /// - Returns: The specified date components
    func components(_ dateComponents: Set<Calendar.Component>,
                    calendar: Calendar = Calendar.current) -> DateComponents {
        calendar.dateComponents(dateComponents, from: self)
    }

    /// Checks if the date is from the current day
    /// - Parameter calendar: Used calendar, default is current
    /// - Returns: True if date is today, false otherwise
    func isToday(calendar: Calendar = Calendar.current) -> Bool {
        calendar.isDateInToday(self)
    }
}
