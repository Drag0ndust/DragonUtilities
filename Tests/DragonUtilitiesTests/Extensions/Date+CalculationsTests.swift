//
//  Date+CalculationsTests.swift
//
//
//  Created by Drag0ndust on 11.12.23.
//

import DragonUtilities
import XCTest

final class Date_CalculationsTests: XCTestCase {
    func test_components_with_default_calendar() {
        // Given
        let date = Date()
        let components: Set<Calendar.Component> = [.year, .month, .day]

        // When
        let result = date.components(components)

        // Then
        XCTAssertNotNil(result.year)
        XCTAssertNotNil(result.month)
        XCTAssertNotNil(result.day)
    }

    func test_components_with_custom_calendar() {
        // Given
        let date = Date()
        let components: Set<Calendar.Component> = [.hour, .minute, .second]
        let customCalendar = Calendar(identifier: .gregorian)

        // When
        let result = date.components(components, calendar: customCalendar)

        // Then
        XCTAssertNotNil(result.hour)
        XCTAssertNotNil(result.minute)
        XCTAssertNotNil(result.second)
    }

    func test_components_with_no_components() {
        // Given
        let date = Date()
        let components: Set<Calendar.Component> = []

        // When
        let result = date.components(components)

        // Then
        XCTAssertEqual(result, DateComponents(), "Result should be an empty DateComponents")
    }

    func test_components_with_default_calendar_and_all_components() {
        // Given
        let date = Date()
        let components: Set<Calendar.Component> = [
            .era,
            .year,
            .month,
            .day,
            .hour,
            .minute,
            .second,
            .weekday,
            .weekdayOrdinal,
            .quarter,
            .weekOfMonth,
            .weekOfYear,
            .yearForWeekOfYear,
            .isLeapMonth,
        ]

        // When
        let result = date.components(components)

        // Then
        XCTAssertNotNil(result.era)
        XCTAssertNotNil(result.year)
        XCTAssertNotNil(result.month)
        XCTAssertNotNil(result.day)
        XCTAssertNotNil(result.hour)
        XCTAssertNotNil(result.minute)
        XCTAssertNotNil(result.second)
        XCTAssertNotNil(result.weekday)
        XCTAssertNotNil(result.weekdayOrdinal)
        XCTAssertNotNil(result.quarter)
        XCTAssertNotNil(result.weekOfMonth)
        XCTAssertNotNil(result.weekOfYear)
        XCTAssertNotNil(result.yearForWeekOfYear)
        XCTAssertNotNil(result.isLeapMonth)
    }

    func test_components_with_custom_calendar_and_subset_of_components() {
        // Given
        let date = Date()
        let components: Set<Calendar.Component> = [.year, .month, .day]
        let customCalendar = Calendar(identifier: .gregorian)

        // When
        let result = date.components(components, calendar: customCalendar)

        // Then
        XCTAssertNotNil(result.year)
        XCTAssertNotNil(result.month)
        XCTAssertNotNil(result.day)
        XCTAssertNil(result.hour)
        XCTAssertNil(result.minute)
        XCTAssertNil(result.second)
        XCTAssertNil(result.weekday)
        XCTAssertNil(result.weekdayOrdinal)
        XCTAssertNil(result.quarter)
        XCTAssertNil(result.weekOfMonth)
        XCTAssertNil(result.weekOfYear)
        XCTAssertNil(result.yearForWeekOfYear)
    }

    func test_isToday_with_today() {
        let date: Date = Date.now
        XCTAssertTrue(date.isToday())
    }

    func test_isToday__with_yesterdays_date() {
        let date = Date.now.addingTimeInterval(-86400)
        XCTAssertFalse(date.isToday())
    }

    func test_isToday_with_tomorrows_date() {
        let date = Date.now.addingTimeInterval(86400)
        XCTAssertFalse(date.isToday())
    }
}
