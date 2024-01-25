//
//  Date+Calculation.swift
//
//
//  Created by Drag0ndust on 11.12.23.
//

import Foundation

public extension Date {
    /// Extracts specified components from the date.
    /// - Parameters:
    ///   - dateComponents: A set of components to extract from the date.
    ///   - calendar: The calendar to use for date calculations. Defaults to the current calendar.
    /// - Returns: A `DateComponents` object containing the specified components extracted from the date.
    func components(_ dateComponents: Set<Calendar.Component>,
                    calendar: Calendar = Calendar.current) -> DateComponents {
        calendar.dateComponents(dateComponents, from: self)
    }

    /// Checks if the current date is today.
    /// - Parameters:
    ///   - calendar: The calendar to use for date calculations. Defaults to the current calendar.
    /// - Returns: A boolean value indicating whether the current date is today.
    func isToday(calendar: Calendar = Calendar.current) -> Bool {
        calendar.isDateInToday(self)
    }

    /// Checks if the current date is before today.
    /// - Parameters:
    ///   - calendar: The calendar to use for date calculations. Defaults to the current calendar.
    /// - Returns: A boolean value indicating whether the current date is before today.
    func isBeforeToday(calendar: Calendar = Calendar.current) -> Bool {
        self < calendar.startOfDay(for: .now)
    }

    /// Checks if the current date is after today.
    /// - Returns: A boolean value indicating whether the current date is after today.
    func isAfterToday() -> Bool {
        guard let startOfTomorrow = Calendar.current.date(byAdding: .day, value: 1, to: Date()) else {
            return false
        }

        let endOfToday = Calendar.current.startOfDay(for: startOfTomorrow)
        return self > endOfToday
    }
}
