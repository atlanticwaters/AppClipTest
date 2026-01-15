//
//  CatFactsView.swift
//  AppClipTestClip
//
//  Created by Andrew Waters on 1/14/26.
//

import SwiftUI

struct CatFactsView: View {
    @State private var currentFactIndex = 0
    private let catFacts = CatFactsData.facts

    var body: some View {
        VStack(spacing: 20) {
            Text("Hello, Cat World!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.orange)

            Spacer()

            // Cat fact card
            VStack(spacing: 16) {
                Text("Fun Cat Fact")
                    .font(.headline)
                    .foregroundColor(.secondary)

                Text(catFacts[currentFactIndex])
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .fill(Color.orange.opacity(0.1))
                    )
                    .animation(.easeInOut, value: currentFactIndex)
            }
            .padding(.horizontal)

            Spacer()

            Button(action: {
                withAnimation {
                    currentFactIndex = (currentFactIndex + 1) % catFacts.count
                }
            }) {
                HStack {
                    Image(systemName: "arrow.clockwise")
                    Text("Next Fact")
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .cornerRadius(12)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    CatFactsView()
}
