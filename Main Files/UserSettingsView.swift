import SwiftUI

struct UserSettingsView: View {
    @State private var notificationsEnabled = true
    @State private var communityEvents = false
    @State private var dailyChallengeReminderTime = Date()
    @State private var enableDarkMode = false
    @State private var enableAccessibilityMode = false
    @Environment (\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                Section("Notifications") {
                    Toggle("Enable Notifications", isOn: $notificationsEnabled)
                    Toggle("Community Event Notifications", isOn: $communityEvents)
                    DatePicker("Daily Challenge Reminder", selection: $dailyChallengeReminderTime, displayedComponents: .hourAndMinute)
                    
                }
                
                Section("General"){
                    Toggle("High Contrast Mode", isOn: $enableDarkMode)
                    Toggle("Accessibility Mode", isOn: $enableAccessibilityMode)
                    
                }
            }
            .navigationBarTitle("User Settings", displayMode: .inline)
            .navigationBarItems(leading: Button("Close") { dismiss() })
        }
    }
}

struct UserSettingsView_Previews: PreviewProvider {
    static var previews: some View {
        UserSettingsView()
    }
}
