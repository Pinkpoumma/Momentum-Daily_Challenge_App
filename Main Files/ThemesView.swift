import SwiftUI

struct ThemesView: View {
    
    @State private var selectedTheme = "Default"
    @Environment (\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            Form {
                // Add options for changing the app's appearance
                Picker("Select Theme", selection: $selectedTheme) {
                    Text("Default").tag("Default")
                    Text("Dark Mode").tag("Dark Mode")
                    Text("Light Mode").tag("Light Mode")
                    // Add more themes as needed
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .navigationBarTitle("Themes", displayMode: .inline)
            .navigationBarItems(leading: Button("Close") { dismiss() })
        }
    }
}

struct ThemesView_Previews: PreviewProvider {
    static var previews: some View {
        ThemesView()
    }
}
