import SwiftUI

struct ProfileView: View {
    @State private var showUserSettings = false
    @State private var showThemes = false
    @State private var showPrivacySettings = false
    @State private var showAccountManagement = false

    var body: some View {
        VStack (spacing: 20) {
            // User Information
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()

            Text("Gabriel McKirdy")
                .font(.title)
                .bold()
                .foregroundStyle(ContentView.orangeColor)

            Text("Passionate about personal growth and community engagement.")
                .multilineTextAlignment(.center)
                .bold()

            // Achievements/Statistics
            HStack {
                Label("Streak: 2", systemImage: "flame.fill")
                    .font(.title3)
                    .foregroundColor(ContentView.orangeColor)
                Spacer()
                Label("Tokens: 0", systemImage: "sparkle")
                    .foregroundColor(.teal)
                    .font(.title3)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 30)
            
            // Themes Button
            Button {
                showThemes = true
            } label: {
                Text("Themes")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .buttonStyle(PrimaryButtonStyle())

            // User Settings Button
            
            Button {
                showUserSettings = true
            } label: {
                Text("User Settings")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .buttonStyle(PrimaryButtonStyle())

            // Privacy Settings Button
            Button {
                showPrivacySettings = true
            } label: {
                Text("Privacy Settings")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            
            .buttonStyle(PrimaryButtonStyle())
            

            // Account Management Button
            Button {
                showAccountManagement = true
            } label: {
                Text("Account Management")
                    .frame(maxWidth: .infinity, alignment: .center)
            }
            .buttonStyle(PrimaryButtonStyle())
            
            Spacer()
            
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .sheet(isPresented: $showUserSettings) {
            UserSettingsView()
        }
        .sheet(isPresented: $showThemes) {
            ThemesView()
        }
        .sheet(isPresented: $showPrivacySettings) {
            PrivacySettingsView()
        }
        .sheet(isPresented: $showAccountManagement) {
            AccountManagementView()
        }
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .bold()
            .padding(.horizontal, 50)
            .padding(.vertical)
            .background(ContentView.tealColor)
            .foregroundColor(.white)
            .cornerRadius(8)
            .scaleEffect(configuration.isPressed ? 0.90 : 1.0)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
