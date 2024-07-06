//
//  View+Conditional.swift
//
//
//  Created by Drag0ndust on 06.07.24.
//

import SwiftUI

public extension View {
    @ViewBuilder
    func ifCondition(_ condition: Bool, transform: (Self) -> some View) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }

    @ViewBuilder
    func ifElse(_ condition: Bool, transform: (Self) -> some View, elseTransform: (Self) -> some View) -> some View {
        if condition {
            transform(self)
        } else {
            elseTransform(self)
        }
    }
}
