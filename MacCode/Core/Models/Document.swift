import Foundation

struct Document: Identifiable, Hashable {
    let id: UUID
    let url: URL
    var content: String

    init(id: UUID = UUID(), url: URL, content: String = "") {
        self.id = id
        self.url = url
        self.content = content
    }

    static func load(from url: URL) throws -> Document {
        let text = try String(contentsOf: url)
        return Document(url: url, content: text)
    }
}
