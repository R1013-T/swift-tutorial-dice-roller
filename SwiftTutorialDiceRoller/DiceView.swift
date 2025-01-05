//
//  DiceView.swift
//  SwiftTutorialDiceRoller
//
//  Created by 髙橋龍之介 on 2025/01/04.
//

import SwiftUI

struct DiceView: View {
    @State private var numberOgPips: Int = 1
    
    var body: some View {
            Button("Roll", systemImage: "die.face.\(numberOgPips).fill") {
                withAnimation{
                    numberOgPips = Int.random(in: 1...6)
                }
            }
            .labelStyle(.iconOnly)
            .aspectRatio(1, contentMode: .fit)
            .foregroundStyle(.black, .white)
            .buttonStyle(.plain)
            .font(.system(size: 50))
    }
}

#Preview {
    HStack {
        DiceView()
        DiceView()
        DiceView()
        DiceView()
        DiceView()
    }
}
