import SwiftUI

struct AccountManagementView: View {
    @State private var changePassword = false
    @State private var deleteAccount = false
    @Environment (\.dismiss) var dismiss
    

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")){
                    
                    Button("Email: gabru27@icloud.com") {
                        
                    }
                    
                    Button("Phone Number: 647-281-0827") {
                        
                    }
                    
                }
                
                Section(header: Text("Manage")) {
                    Button("Change Username") {
                        // Action to change username
                    }
                    .foregroundStyle(ContentView.lightColor)
                    Button("Change Password") {
                        // Action to change password
                    }
                    
                    Button("Delete Account", role: .destructive) {
                        // Action to delete account
                    }
                }
                Section(header: Text("Payment Methods")) {
                    
                    Label {
                        Text("\"gabru27\" Paypal Account")
                        
                        
                        
                    } icon: {
                        Image("PaypalLogo")
                            .resizable()
                            .frame(width: 28.0, height: 28.0)
                    }
                    
                    Label {
                        Text("Credit Card Ending in: 1234")
                    } icon: {
                        Image("CreditCardIcon")
                            .resizable()
                            .frame(width: 28.0, height: 28.0)
                    }
                    
                    Label {
                        Text("Gift Card Ending in: 5678")
                    } icon: {
                        Image("GiftCard")
                            .resizable()
                            .frame(width: 28.0, height: 28.0)
                    }
                    
                }
            }
            .navigationBarTitle("Account Management", displayMode: .inline)
            .navigationBarItems(leading: Button("Close") {dismiss()})
        }
    }
}

struct AccountManagementView_Previews: PreviewProvider {
    static var previews: some View {
        AccountManagementView()
    }
}
