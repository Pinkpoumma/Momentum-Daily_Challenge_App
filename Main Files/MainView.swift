import SwiftUI

struct MainView: View {
    @State private var dailyTaskInput: String = ""
    @State private var selectedTab: Int = 0
    @State private var streakCount: Int = 0
    @State private var gemCount: Int = 0
    @State private var showLoading = false
    @State private var navigateToMapView = false

    var body: some View {
        if navigateToMapView {
            MapView(navigateToMapView: $navigateToMapView)
        } else {
            TabView(selection: $selectedTab) {
                VStack {
                    HStack {
                        Text("Momentum")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(ContentView.orangeColor)
                            .padding(10)
                            .cornerRadius(10)
                        
                    }
                    .padding(.top, 20)

                    Text("Welcome back, Gabriel McKirdy")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.top, 5)

                    HStack {
                        StreakIconView(streakCount: $streakCount)
                        Spacer()
                        GemIconView(gemCount: $gemCount)
                    }
                    .padding()

                    VStack {
                        Text("Hello, Gabriel!   What would you like to get done today?")
                            .foregroundColor(Color(red: 255 / 255, green: 153 / 255, blue: 51 / 255))
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 5)
                            .font(.title)
                            .bold()
                        
                        
                        
                        TextField("Enter your task", text: $dailyTaskInput)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .foregroundColor(.white)
                            .colorInvert()

                        if showLoading {
                            LoadingDotsView()
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    navigateToMapView = true
                                }
                            }
                        } else {
                            Button("Submit") {
                                showLoading = true
                            }
                            .bold()
                            .padding(20)
                            .padding(.horizontal)
                            .background(ContentView.tealColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                            
                            
                        }
                    }
                    .padding()
                    .background(Color(red: 240 / 255, green: 248 / 255, blue: 255 / 255))
                    .cornerRadius(15)
                    .padding(.horizontal, 30)
                    
                    .padding()
                    
                    Text("""
                         "Success is the sum of small efforts, repeated day in and day out." - Robert Collier
                         """)
                        .font(.title3)
                        .italic()
                        .padding(.all, 30.0)
                        .frame(maxWidth: .infinity, alignment: .center)                                        .background(ContentView.tealColor)
                        .cornerRadius(10)
                        .font(.subheadline)
                        .padding(.horizontal, 41)
                    Spacer()
                }
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)

                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
                    .tag(1)
                
                ChallengesView()
                    .tabItem {
                        Label("Challenges", systemImage: "list.bullet.rectangle")
                    }
                    .tag(2)
                
                ShopView()
                    .tabItem {
                        Label("Shop", systemImage: "cart")
                    }
                    .tag(3)
            }
            .accentColor(.teal)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
