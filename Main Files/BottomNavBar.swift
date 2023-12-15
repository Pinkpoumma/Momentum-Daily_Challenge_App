import SwiftUI

struct BottomNavBar: View {
    @Binding var activeTab: Int

    var body: some View {
        HStack {
            Button(action: { self.activeTab = 0 }) {
                Image(systemName: "person.crop.circle")
                    .iconModifier()
                Text("Profile")
                    .tabTextModifier(isActive: self.activeTab == 0)
            }
            Spacer()
            Button(action: { self.activeTab = 1 }) {
                Image(systemName: "list.bullet.rectangle")
                    .iconModifier()
                Text("Challenges")
                    .tabTextModifier(isActive: self.activeTab == 1)
            }
            Spacer()
            Button(action: { self.activeTab = 2 }) {
                Image(systemName: "cart")
                    .iconModifier()
                Text("Shop")
                    .tabTextModifier(isActive: self.activeTab == 2)
            }
        }
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.black)
        .foregroundColor(.white)
    }
}


extension Image {
    func iconModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(width: 24, height: 24)
    }
}

extension Text {
    func tabTextModifier(isActive: Bool) -> some View {
        self
            .foregroundColor(isActive ? .orange : .gray)
            .font(.caption)
            .lineLimit(1)
    }
}
