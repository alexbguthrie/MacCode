import Foundation

@MainActor
final class SidebarViewModel: ObservableObject {
    @Published var files: [URL] = []

    func loadDirectory(_ url: URL) {
        if let contents = try? FileManager.default.contentsOfDirectory(at: url, includingPropertiesForKeys: nil, options: .skipsHiddenFiles) {
            files = contents
        } else {
            files = []
        }
    }
}
