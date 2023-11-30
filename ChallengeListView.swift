//
//  ChallengeListView.swift
//  Momentum
//
//  Created by SHSM Student1 on 2023-11-29.
//

import SwiftUI

struct ChallengeListView: View {
    var body: some View {
        List {
        Text("Challenge 1")
        Text("Challenge 2")
        Text("Challenge 3")
        }
        .navigationBarTitle("Challenges")
    }
}
struct ChallengeListView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeListView()
    }
}
