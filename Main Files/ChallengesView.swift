import SwiftUI

struct ChallengesView: View {
    // Example challenge data
    @State private var weeklyChallenges = [
        Challenge(title: "Sign in 3 days this week", currentProgress: 2, totalRequired: 3),
        Challenge(title: "Complete 5 mindfulness sessions", currentProgress: 3, totalRequired: 5),
        Challenge(title: "Walk 10,000 steps 4 times", currentProgress: 1, totalRequired: 4)
    ]
    @State private var dailyChallenges = [
        DailyChallenge(title: "Drink 8 glasses of water", isComplete: false),
        DailyChallenge(title: "Read for 30 minutes", isComplete: false),
        DailyChallenge(title: "Go for a walk around the block", isComplete: false),
        DailyChallenge(title: "Take a Shower Today", isComplete: false)
    ]

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                Text("Challenges")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .bold()
                    .foregroundStyle(ContentView.orangeColor)
                    .padding()

                Text("Weekly Challenges")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundStyle(.teal)

                ForEach(weeklyChallenges.indices, id: \.self) { index in
                    VStack(alignment: .leading) {
                        Text(weeklyChallenges[index].title)
                            .bold()
                        ProgressView(value: Float(weeklyChallenges[index].currentProgress), total: Float(weeklyChallenges[index].totalRequired))
                            .progressViewStyle(LinearProgressViewStyle())
                    }
                    .padding(.horizontal)
                }

                Divider().padding(.vertical)

                Text("Daily Challenges")
                    .font(.headline)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .foregroundStyle(.teal)
                

                ForEach(dailyChallenges.indices, id: \.self) { index in
                    HStack {
                        Text(dailyChallenges[index].title)
                        Spacer()
                        Image(systemName: dailyChallenges[index].isComplete ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(dailyChallenges[index].isComplete ? .green : .gray)
                            .onTapGesture {
                                dailyChallenges[index].isComplete.toggle()
                            }
                    }
                    .padding([.top, .leading, .trailing])
                    .font(.subheadline)
                    .bold()
                }
                
                awardsSection
                .padding(.horizontal)
            }
            .padding(.bottom)
        }
    }
    private var awardsSection: some View {
            HStack {
                Image(systemName: "trophy.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                Text("Awards")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(ContentView.tealColor)
            .cornerRadius(10)
            .padding(.top, 15.0)
        
        }
    }


// A simple model for challenges
struct Challenge {
    let title: String
    let currentProgress: Int
    let totalRequired: Int
}

struct DailyChallenge {
    let title: String
    var isComplete: Bool
}

struct ChallengesView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengesView()
    }
}
