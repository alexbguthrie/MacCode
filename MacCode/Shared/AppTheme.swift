//
//  AppTheme.swift
//  MacCode
//
//  Created by Alex Guthrie on 6/24/25.
//

import SwiftUI

/// Provides basic theming utilities used throughout the app.
struct AppTheme {
    /// Background color that adapts to light/dark mode.
    static var background: Color {
        Color("AppBackground")
    }

    /// Primary accent color used for selection and highlights.
    static var accent: Color {
        Color.accentColor
    }
}
