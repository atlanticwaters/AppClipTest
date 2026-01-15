//
//  LoadingView.swift
//  AppClipTestClip
//
//  Created by Andrew Waters on 1/14/26.
//

import SwiftUI

struct LoadingView: View {
    @State private var isAnimating = false
    @State private var catScale: CGFloat = 1.0

    var body: some View {
        VStack(spacing: 30) {
            // Animated cat emoji
            Text("🐱")
                .font(.system(size: 80))
                .scaleEffect(catScale)
                .animation(
                    Animation.easeInOut(duration: 0.6)
                        .repeatForever(autoreverses: true),
                    value: catScale
                )

            // Custom spinning loader
            ZStack {
                Circle()
                    .stroke(Color.orange.opacity(0.3), lineWidth: 8)
                    .frame(width: 60, height: 60)

                Circle()
                    .trim(from: 0, to: 0.7)
                    .stroke(
                        Color.orange,
                        style: StrokeStyle(lineWidth: 8, lineCap: .round)
                    )
                    .frame(width: 60, height: 60)
                    .rotationEffect(.degrees(isAnimating ? 360 : 0))
                    .animation(
                        Animation.linear(duration: 1)
                            .repeatForever(autoreverses: false),
                        value: isAnimating
                    )
            }

            Text("Loading cat facts...")
                .font(.headline)
                .foregroundColor(.gray)
        }
        .onAppear {
            isAnimating = true
            catScale = 1.2
        }
    }
}

#Preview {
    LoadingView()
}
