//
//  ContentView.swift
//  AppClipTestClip
//
//  Created by Andrew Waters on 1/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = true

    var body: some View {
        ZStack {
            if isLoading {
                LoadingView()
                    .onAppear {
                        // Simulate loading delay
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                isLoading = false
                            }
                        }
                    }
            } else {
                CatFactsView()
                    .transition(.opacity.combined(with: .scale))
            }
        }
    }
}

#Preview {
    ContentView()
}
