//
//  AppClipTestClipApp.swift
//  AppClipTestClip
//
//  Created by Andrew Waters on 1/14/26.
//

import SwiftUI

@main
struct AppClipTestClipApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onContinueUserActivity(NSUserActivityTypeBrowsingWeb) { activity in
                    guard let incomingURL = activity.webpageURL else { return }
                    // Handle invocation URL if needed
                    print("App Clip invoked with URL: \(incomingURL)")
                }
        }
    }
}
