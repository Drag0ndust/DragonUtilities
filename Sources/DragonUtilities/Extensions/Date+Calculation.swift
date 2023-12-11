//
//  Date+Calculation.swift
//  
//
//  Created by Drag0ndust on 11.12.23.
//

import Foundation

public extension Date {
    
    func components(_ dateComponents: Set<Calendar.Component>, calendar: Calendar = Calendar.current) -> DateComponents {
        calendar.dateComponents(dateComponents, from: self)
    }
}
