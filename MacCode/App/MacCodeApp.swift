import SwiftUI

@main
struct MacCodeApp: App {
    @StateObject private var documents = DocumentManager()

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

            .environmentObject(documents)
=======

        }
    }
}
