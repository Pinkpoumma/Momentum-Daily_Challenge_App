import SwiftUI

struct MapView: View {
    @Binding var navigateToMapView: Bool
 
    var body: some View {
        VStack {
            Text("Recomendations")
                .fontWeight(.bold)
                .foregroundColor(ContentView.orangeColor)
                .font(.title2)
            Image("Map")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 450)

            List {
                locationRow(name: "LCBO", street: "King Street")
                locationRow(name: "Coppley", street: "Vine Street")
                locationRow(name: "Jackson Square", street: "James Street")
                locationRow(name: "Hamilton City Centre", street: "York Boulevard")
                locationRow(name: "Dollarama", street: "King Street")
                // Add more locations as needed
            }
            .listStyle(PlainListStyle())
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }

    private var backButton: some View {
        Button(action: {
            navigateToMapView = false
        }) {
            Image(systemName: "arrow.left")
                .foregroundColor(.blue)
        }
    }

    private func locationRow(name: String, street: String) -> some View {
        HStack {
            Text(name)
                .foregroundColor(ContentView.orangeColor)
            Spacer()
            Text(street)
                .foregroundColor(.white)
        }
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MapView(navigateToMapView: .constant(true))
        }
    }
}
