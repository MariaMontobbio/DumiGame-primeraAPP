//
//  TestVeiw.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 09/11/2026.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var game:Game
    @State var sheetIsVisible = false
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
            VStack {
                HStack {
                    Button(action: {
                        //accion
                        game.restartGame()
                    }, label: {
                        SymbolView(symbolName: "arrow.clockwise")
                    }).foregroundColor(.primary)
                    Spacer()
                    Button(action: {
                        sheetIsVisible = true
                    }, label: {
                        SymbolView(symbolName: "list.dash")
                    }).foregroundColor(.primary)
                    
                }
                Spacer()
                HStack {
                    NumberView(text: "SCORE", value: game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: game.rounds)
                }
            }.padding()
        }.sheet(isPresented: $sheetIsVisible) {
            MarksView(sheetIsVisible: $sheetIsVisible)
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
