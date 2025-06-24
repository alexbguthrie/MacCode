import Foundation
import SwiftUI

protocol SyntaxHighlighter {
    func highlight(_ text: String) -> AttributedString
}

struct PlainHighlighter: SyntaxHighlighter {
    func highlight(_ text: String) -> AttributedString {
        AttributedString(text)
    }
}
