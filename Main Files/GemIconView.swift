import SwiftUI

struct GemIconView: View {
    @Binding var gemCount: Int

    var body: some View {
        Label("Tokens: 0", systemImage: "sparkle")
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
            .background(ContentView.tealColor)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct GemIconView_Previews: PreviewProvider {
    static var previews: some View {
        GemIconView(gemCount: .constant(0))
    }
}
