//
//  SettingsView.swift
//  Momentum
//
//  Created by SHSM Student1 on 2023-11-29.
//

import SwiftUI

struct SettingsView : View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("General")) {
                    Text("Account Settings")
                    Text("Notifications")
                }
                Section(header: Text("About")) {
                    Text("Privacy Policy")
                    Text("Terms of Service")
                    Text("App Version")
                }
            }
            .navigationTitle("settings")
            .navigationBarItems(trailing: Button("Done") {
                
            })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
