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
        VStack {
            Image(systemName: "die.face.\(numberOgPips)")
                .resizable()
                .frame(width: 100, height: 100)
            
            Button("Roll") {
                withAnimation{
                    numberOgPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    DiceView()
}
