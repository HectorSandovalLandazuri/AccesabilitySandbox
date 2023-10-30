//
//  ContentView.swift
//  AccesabilitySandbox
//
//  Created by Héctor Manuel Sandoval Landázuri on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    let pictures = [
        "collins-lesulie-soHJDorfK6I-unsplash",
        "heloise-delbos-F_qmLOu0OSo-unsplash",
        "kateryna-hliznitsova-GWJjIiI5evQ-unsplash",
        "marina-reich-G6_bC2aiOO0-unsplash"
    ]

    let labels = [
        "Woman Walking",
        "Elephants",
        "Cup and Candles",
        "Air View",
    ]
    
    @State private var selectedPicture = Int.random(in: 0...3)
    @State private var value = 10

    var body: some View {
        //ejemplo 1
        //        Image(pictures[selectedPicture])
//            .resizable()
//            .scaledToFit()
//            .onTapGesture {
//                selectedPicture = Int.random(in: 0...3)
//            }
//            .accessibilityLabel(labels[selectedPicture])
//            .accessibilityAddTraits(.isButton)
//            .accessibilityRemoveTraits(.isImage)

        //Segundo ejemplo
        //        VStack {
//            Text("Your score is")
//            Text("1000")
//                .font(.title)
//        }
//        //Para leer juntos
//        //.accessibilityElement(children: .combine)
//        //Para leer juntos sin pausa
//        .accessibilityElement(children: .ignore)
//        .accessibilityLabel("Your score is 1000")
        VStack {
            Text("Value: \(value)")

            Button("Increment") {
                value += 1
            }

            Button("Decrement") {
                value -= 1
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Value")
        .accessibilityValue(String(value))
        .accessibilityAdjustableAction { direction in
            switch direction {
            case .increment:
                value += 1
            case .decrement:
                value -= 1
            default:
                print("Not handled.")
            }
    }
}

#Preview {
    ContentView()
}
