//
//  TestVeiw.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 09/11/2026.
//

import SwiftUI

struct TestVeiw: View {
    var body: some View {
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
        }
    }
}

struct TestVeiw_Previews: PreviewProvider {
    static var previews: some View {
        TestVeiw()
    }
}
