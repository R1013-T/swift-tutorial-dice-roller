//
//  ContentView.swift
//  SwiftTutorialDiceRoller
//
//  Created by 髙橋龍之介 on 2025/01/04.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1

    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .foregroundStyle(.white)

                HStack {
                    ForEach(1...numberOfDice, id: \.description) { _ in
                        DiceView()
                    }
                }

            HStack() {
                Button("Remove Dice", systemImage: "minus.circle.fill") {
                    withAnimation {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice <= 1)
                .labelStyle(.iconOnly)
                .font(.title)
                Button("Add Dice", systemImage: "plus.circle.fill") {
                    withAnimation {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice >= 5)
                .labelStyle(.iconOnly)
                .font(.title)
            }
            .padding()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.appBackground)
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
