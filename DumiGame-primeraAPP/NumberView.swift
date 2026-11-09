//
//  NumberView.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 09/11/2026.
//

import SwiftUI

struct NumberView: View {
    let text: String
    let value: Int
    
    var body: some View {
        VStack{
            Text(text).padding(.bottom, 20.0)
            Text("\(value)")
                .frame(width: 56, height: 56)
                .overlay(RoundedRectangle(cornerRadius: 21.0).stroke())
        }
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
