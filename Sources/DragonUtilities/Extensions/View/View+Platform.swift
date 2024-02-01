//
//  View+Platform.swift
//
//
//  Created by Drag0ndust on 01.02.24.
//

import SwiftUI

public extension View {
    /// Apply Modifier only when running on iOS/iPadOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func iOSOnly(modifier: (Self) -> some View) -> some View {
        #if os(iOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when not running on iOS/iPadOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func iOSExcluded(modifier: (Self) -> some View) -> some View {
        #if !os(iOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when running on macOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func macOSOnly(modifier: (Self) -> some View) -> some View {
        #if os(macOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when not running on macOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func macOSExcluded(modifier: (Self) -> some View) -> some View {
        #if !os(macOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when running on tvOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func tvOSOnly(modifier: (Self) -> some View) -> some View {
        #if os(tvOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when not running on tvOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func tvOSExcluded(modifier: (Self) -> some View) -> some View {
        #if !os(tvOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when running on watchOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func watchOSOnly(modifier: (Self) -> some View) -> some View {
        #if os(watchOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when not running on watchOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func watchOSExcluded(modifier: (Self) -> some View) -> some View {
        #if !os(watchOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when running on visionOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func visionOSOnly(modifier: (Self) -> some View) -> some View {
        #if os(visionOS)
            return modifier(self)
        #else
            return self
        #endif
    }

    /// Apply Modifier only when not running on visionOS
    /// - Parameter modifier: Closure which applies a given modifier
    /// - Returns: The view with the modifier applied
    func visionOSExcluded(modifier: (Self) -> some View) -> some View {
        #if !os(visionOS)
            return modifier(self)
        #else
            return self
        #endif
    }
}
