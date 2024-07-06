//
//  View+Conditional.swift
//
//
//  Created by Drag0ndust on 06.07.24.
//

import SwiftUI

public extension View {
    // A function that conditionally applies a transformation to a view.
    // - Parameters:
    //   - condition: A Boolean value that determines whether the transformation is applied.
    //   - transform: A closure that takes the current view and returns a transformed view.
    // - Returns: Either the transformed view if the condition is true, or the original view if the condition is false.
    @ViewBuilder
    func ifCondition(_ condition: Bool, transform: (Self) -> some View) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }

    // A function that conditionally applies one of two transformations to a view.
    // - Parameters:
    //   - condition: A Boolean value that determines which transformation is applied.
    //   - transform: A closure that takes the current view and returns a transformed view if the condition is true.
    //   - elseTransform: A closure that takes the current view and returns a transformed view if the condition is
    //   false.
    // - Returns: Either the transformed view if the condition is true, or the elseTransformed view if the condition is
    // false.
    @ViewBuilder
    func ifElse(_ condition: Bool, transform: (Self) -> some View, elseTransform: (Self) -> some View) -> some View {
        if condition {
            transform(self)
        } else {
            elseTransform(self)
        }
    }
}
