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
            List(scrums) { scrum in
                CardView(scrum: scrum)
                    .listRowBackground(scrum.theme.mainColor)
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
        static var previews: some View {
            ScrumsView(scrums: DailyScrum.sampleData)
    }
}
