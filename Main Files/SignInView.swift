import SwiftUI

struct SignInView: View {
    @Binding var isSignedIn: Bool
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoading: Bool = false

    var body: some View {
        VStack {
            Image("MomentumLogo")
                .resizable()
                .frame(width: 240, height: 240)
            Text("Welcome to Momentum")
                .font(.title)
                .fontWeight(.heavy)
                .bold()
                .padding(.bottom)
                .foregroundStyle(ContentView.orangeColor)

            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.vertical)
                .colorInvert()

            SecureField("Password", text: $password)
            
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.vertical)
                .colorInvert()

            if isLoading {
                LoadingDotsView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            withAnimation {
                                isSignedIn = true
                            }
                        }
                    }
            } else {
                Button(action: {
                    isLoading = true
                }) {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .padding(.vertical, 16.0)
                        .frame(maxWidth: .infinity)
                        .background(ContentView.tealColor)
                        .cornerRadius(10)
                        .bold()
                }
                .padding(.bottom)
                VStack {
                    Text("No Account? Make One!")
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                        .padding(.bottom)
                    
                    Text("Forgot Password?")
                        .fontWeight(.semibold)
                        .foregroundStyle(.blue)
                        

                }
                .padding()
            }
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(isSignedIn: .constant(false))
    }
}
