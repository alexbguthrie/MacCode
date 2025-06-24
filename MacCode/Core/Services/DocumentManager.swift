import SwiftUI

@MainActor
final class DocumentManager: ObservableObject {
    @Published private(set) var openDocuments: [Document] = []
    @Published var selectedDocument: Document?

    func open(url: URL) {
        if let doc = try? Document.load(from: url) {
            if !openDocuments.contains(where: { $0.id == doc.id }) {
                openDocuments.append(doc)
            }
            selectedDocument = doc
        }
    }

    func close(_ document: Document) {
        openDocuments.removeAll { $0.id == document.id }
        if selectedDocument?.id == document.id {
            selectedDocument = openDocuments.last
        }
    }

    func updateContent(of document: Document, with newContent: String) {
        guard let index = openDocuments.firstIndex(where: { $0.id == document.id }) else { return }
        openDocuments[index].content = newContent
        if selectedDocument?.id == document.id {
            selectedDocument?.content = newContent
        }
    }
}
