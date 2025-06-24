//
//  MacCodeApp.swift
//  MacCode
//
//  Created by Alex Guthrie on 6/23/25.
//

import SwiftUI

@main
struct MacCodeApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView()
            } detail: {
                VStack(spacing: 0) {
                    TabBarView()
                    MainEditorView()
                }
            }
        }
    }
}
