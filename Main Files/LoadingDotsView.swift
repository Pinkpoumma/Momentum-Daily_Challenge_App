import SwiftUI

struct LoadingDotsView: View {
    @State private var isLoading = false

    let dotColor: Color = Color(red: 234 / 255, green: 88 / 255, blue: 12 / 255)

    var body: some View {
        HStack {
            ForEach(0..<3) { index in
                Circle()
                    .frame(width: 15, height: 15)
                    .foregroundColor(dotColor)
                    .scaleEffect(self.isLoading ? 1.0 : 0.5)
                    .animation(
                        Animation.easeInOut(duration: 0.6)
                            .repeatForever(autoreverses: true)
                            .delay(Double(index) / 10),
                        value: isLoading
                    )
            }
        }
        .onAppear() {
            self.isLoading = true
        }
    }
}

struct LoadingDotsView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingDotsView()
    }
}
