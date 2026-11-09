//
//  TestVeiw.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 09/11/2026.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var game:Game
    
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
                    })
                    Spacer()
                    SymbolView(symbolName: "list.dash")
                    
                }
                Spacer()
                HStack {
                    NumberView(text: "SCORE", value: game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: 0)
                }
            }.padding()
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
