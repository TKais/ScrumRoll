//
//  ScrumRollApp.swift
//  ScrumRoll
//
//  Created by Tiff Kaiser on 11/25/24.
//

import SwiftUI

@main
struct ScrumRollApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
