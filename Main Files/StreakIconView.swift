import SwiftUI

struct StreakIconView: View {
    @Binding var streakCount: Int

    var body: some View {
        Label("Streak: 2", systemImage: "flame.fill")
            .padding(EdgeInsets(top: 8, leading: 12, bottom: 8, trailing: 12))
            .background(ContentView.orangeColor)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct StreakIconView_Previews: PreviewProvider {
    static var previews: some View {
        StreakIconView(streakCount: .constant(0))
    }
}
