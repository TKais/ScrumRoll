//
//  ScrumsView.swift
//  ScrumRoll
//
//  Created by Tiff Kaiser on 11/25/24.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        VStack {
            NavigationStack {
                List(scrums) { scrum in
                    NavigationLink(destination: Text(scrum.title)) {
                            CardView(scrum: scrum)
                    }
                    .listRowBackground(scrum.theme.mainColor)
                }
                .navigationTitle("Daily Scrums")
                .toolbar {
                    Button(action: {}) {
                        Image(systemName: "plus")
                    }
                    .accessibilityLabel("New Scrum")
                }
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
        static var previews: some View {
            ScrumsView(scrums: DailyScrum.sampleData)
    }
}
