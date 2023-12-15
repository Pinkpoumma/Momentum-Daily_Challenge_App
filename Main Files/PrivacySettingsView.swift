import SwiftUI

struct PrivacySettingsView: View {
    // Placeholder for privacy settings state
    @State private var enableDataSharing = false
    @State private var enableLocation = false
    @State private var selectedTown = "Waterdown"
    @State private var selectedProvince = "Ontario"
    @State private var enableDarkMode = false
    @Environment (\.dismiss) var dismiss
    
    let towns = ["Hamilton", "Smithville", "Burlington", "Ancaster", "Dundas", "Stoney Creek","Cambridge","Milton","Lincoln","Georgetown","Brantford","Dunnville", "Other"]
    

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Location")) {
                    Toggle("Enable Location", isOn: $enableLocation)
                        .foregroundStyle(.green)
                    
                    Text("Province: Ontario")
                        .bold()
                        .foregroundStyle(.teal)
                        
                    Picker("Town", selection: $selectedTown) {
                        ForEach(towns, id: \.self) {
                            Text($0)
                        }
                    }
                }
                Section("Data Collection") {
                    Toggle("Enable Data Sharing", isOn: $enableDataSharing)
                        .foregroundStyle(.green)
                    // Add more privacy options as needed
                }
                
            }
            .navigationBarTitle("Privacy Settings", displayMode: .inline)
            .navigationBarItems(leading: Button("Close") {dismiss()})
        }
        
    }
}

struct PrivacySettingsView_Previews: PreviewProvider {
    static var previews: some View {
        PrivacySettingsView()
    }
}
