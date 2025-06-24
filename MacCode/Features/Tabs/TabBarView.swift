import SwiftUI

struct TabBarView: View {
    var body: some View {
        HStack {
            Text("Tab 1")
            Spacer()
        }
        .frame(height: 28)
        .padding(.horizontal, 8)
        .background(.gray.opacity(0.1))
    }
}

#Preview {
    TabBarView()
}
