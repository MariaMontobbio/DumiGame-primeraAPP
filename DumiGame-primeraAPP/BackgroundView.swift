//
//  TestVeiw.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 09/11/2026.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                HStack {
                    SymbolView(symbolName: "list.dash")
                    Spacer()
                    SymbolView(symbolName: "arrow.clockwise")
                }
                Spacer()
                HStack {
                    NumberView(text: "ROUND", value: 0)
                    NumberView(text: "SCORE", value: 0)
                }
            }.padding()
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
