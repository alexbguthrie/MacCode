import SwiftUI

struct MainEditorView: View {
    @EnvironmentObject var docs: DocumentManager

    var body: some View {
        Group {
            if let document = docs.selectedDocument {
                TextEditor(text: Binding(
                    get: { document.content },
                    set: { docs.updateContent(of: document, with: $0) }
                ))
                .font(.system(.body, design: .monospaced))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            } else {
                Text("No file open")
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
    }
}

#Preview {
    MainEditorView()
        .environmentObject(DocumentManager())
}
