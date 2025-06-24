import SwiftUI

struct SidebarView: View {

    @StateObject private var model = SidebarViewModel()
    @EnvironmentObject var docs: DocumentManager

    var body: some View {
        List {
            ForEach(model.files, id: .self) { url in
                Button {
                    if url.hasDirectoryPath {
                        model.loadDirectory(url)
                    } else {
                        docs.open(url: url)
                    }
                } label: {
                    Label(url.lastPathComponent, systemImage: url.hasDirectoryPath ? "folder" : "doc.text")
                }
            }
        }
        .frame(minWidth: 200)
        .onAppear {
            model.loadDirectory(FileManager.default.homeDirectoryForCurrentUser)
        }

    var body: some View {
        List {
            Text("Sidebar")
        }
        .frame(minWidth: 200)

    }
}

#Preview {
    SidebarView()

        .environmentObject(DocumentManager())


}
