import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var docs: DocumentManager

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 4) {
                ForEach(docs.openDocuments) { doc in
                    Text(doc.url.lastPathComponent)
                        .lineLimit(1)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 3)
                        .background(docs.selectedDocument?.id == doc.id ? AppTheme.accent.opacity(0.2) : Color.clear)
                        .cornerRadius(4)
                        .onTapGesture { docs.selectedDocument = doc }
                }
            }
            .frame(height: 28)
            .padding(.horizontal, 8)
        }
        .background(.gray.opacity(0.1))
    }
}

#Preview {
    TabBarView()
        .environmentObject(DocumentManager())
}
