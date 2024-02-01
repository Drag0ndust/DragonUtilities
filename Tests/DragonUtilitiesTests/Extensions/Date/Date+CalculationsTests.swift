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
        let date = Date()
        let components: Set<Calendar.Component> = [.year, .month, .day]

        let result = date.components(components)

        XCTAssertNotNil(result.year)
        XCTAssertNotNil(result.month)
        XCTAssertNotNil(result.day)
    }

    func test_components_with_custom_calendar() {
        let date = Date()
        let components: Set<Calendar.Component> = [.hour, .minute, .second]
        let customCalendar = Calendar(identifier: .gregorian)

        let result = date.components(components, calendar: customCalendar)

        XCTAssertNotNil(result.hour)
        XCTAssertNotNil(result.minute)
        XCTAssertNotNil(result.second)
    }

    func test_components_with_no_components() {
        let date = Date()
        let components: Set<Calendar.Component> = []

        let result = date.components(components)

        XCTAssertEqual(result, DateComponents(), "Result should be an empty DateComponents")
    }

    func test_components_with_default_calendar_and_all_components() {
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

        let result = date.components(components)

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
        let date = Date()
        let components: Set<Calendar.Component> = [.year, .month, .day]
        let customCalendar = Calendar(identifier: .gregorian)

        let result = date.components(components, calendar: customCalendar)

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

    func test_add_with_days() {
        let baseDate = Date() // Current date
        let calendar = Calendar.current

        let resultDate = baseDate.add(1, toComponent: .day, with: calendar)

        XCTAssertNotNil(resultDate, "Resulting date should not be nil")

        if let resultDate {
            // Calculate the expected date
            let expectedDate = calendar.date(byAdding: .day, value: 1, to: baseDate)

            // Assert the result matches the expected date
            XCTAssertEqual(resultDate, expectedDate, "Resulting date should be 1 day after the base date")
        }
    }

    func test_isToday_with_today() {
        let date: Date = Date.now
        XCTAssertTrue(date.isToday(), "Date should be today")
    }

    func test_isToday_with_yesterdays_date() {
        let date = Date.now.addingTimeInterval(-86400)
        XCTAssertFalse(date.isToday(), "Date should not be today")
    }

    func test_isToday_with_tomorrows_date() {
        let date = Date.now.addingTimeInterval(86400)
        XCTAssertFalse(date.isToday(), "Date should not be today")
    }

    func test_isBeforeToday_with_today() {
        let date: Date = Date.now
        XCTAssertFalse(date.isBeforeToday(), "Date should not be before today")
    }

    func test_isBeforeToday_with_yesterdays_date() {
        let date = Date.now.addingTimeInterval(-86400)
        XCTAssertTrue(date.isBeforeToday(), "Date should be before today")
    }

    func test_isBeforeToday_with_tomorrows_date() {
        let date: Date = Date.now.addingTimeInterval(86400)
        XCTAssertFalse(date.isBeforeToday(), "Date should not be before today")
    }

    func test_isAfterToday_with_today() {
        let date: Date = Date.now
        XCTAssertFalse(date.isAfterToday(), "Date should not be after today")
    }

    func test_isAfterToday_with_yesterdays_date() {
        let date = Date.now.addingTimeInterval(-86400)
        XCTAssertFalse(date.isAfterToday(), "Date should not be after today")
    }

    func test_isAfterToday_with_tomorrows_date() {
        let date: Date = Date.now.addingTimeInterval(86400)
        XCTAssertTrue(date.isAfterToday(), "Date should be after today")
    }
}
