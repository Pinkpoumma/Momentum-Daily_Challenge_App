import SwiftUI


   
struct ContentView: View {
    @State private var isSignedIn = false
    @State private var isTransitioning = false

    static let orangeColor = Color(red: 255 / 255, green: 128 / 255, blue: 42 / 255)
    static let tealColor = Color(red: 23 / 255, green: 58 / 255, blue: 94 / 255)
    static let lightColor = Color(red: 204 / 255, green: 213 / 255, blue: 219 / 255)

    var body: some View {
        
        if isSignedIn {
            MainView()
        } else {
            SignInView(isSignedIn: $isSignedIn)
        }

    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


#Preview {
    ContentView()
}
