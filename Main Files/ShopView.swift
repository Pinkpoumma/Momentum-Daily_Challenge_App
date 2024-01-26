import SwiftUI

struct ShopView: View {
    let tokenPackages = [
        ("50 Tokens", "$0.99"),
        ("100 Tokens", "$1.60"),
        ("250 Tokens", "$4.99"),
        ("500 Tokens", "$6.99")
    ]
    let themes = [
        "Neon Blue (300 Tokens)",
        "Calming Green (100 Tokens)",
        "Sunset Orange (150 Tokens)",
        "Midnight Black (50 Tokens)"
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                // Custom Title
                Text("Daily Shop")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(ContentView.orangeColor)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                Text("Refreshes in 6 Hours")
                    .font(.title2)
                    .bold()

                List {
                    Section(header: Text("Tokens for Sale").padding(.top)) {
                        ForEach(tokenPackages, id: \.0) { package in
                            tokenRow(package: package)
                        }
                    }

                    Section(header: Text("Themes for Sale")) {
                        ForEach(themes, id: \.self) { theme in
                            themeRow(theme: theme)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
 
    private func tokenRow(package: (String, String)) -> some View {
        HStack {
            Image(systemName: "sparkle")
                .foregroundColor(.teal)
            Text(package.0)
            Spacer()
            Text(package.1)
                .foregroundColor(.gray)
            previewButton
        }
        .padding(.vertical, 8)
    }
// 0.687646341463415 is the reletivity for the function decending
    private func themeRow(theme: String) -> some View {
        HStack {
            Text(theme)
            Spacer()
            Image(systemName: "paintpalette.fill")
            
            
                .foregroundColor(.blue)
            previewButton
        }
        .padding(.vertical, 8)
    }

    private var previewButton: some View {
        Button(action: {
            
        }) {
            Text("Preview")
                .foregroundColor(.blue)
                .font(.subheadline)
        }
    }
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView()
    }
}
