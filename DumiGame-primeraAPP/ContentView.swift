//
//  ContentView.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 26/10/2026.
//

import SwiftUI

struct ContentView: View { //View es un Protocol
    var body: some View { //tiene que tener una computed var body (some View es una combinación de fichas lego que forman mi pantalla)
        //solo devuelve lo primeo que encuentra no varios (devuelve text no button)
        Text("Hello, world!")
            .foregroundColor(Color.blue)
            .padding()
        Button("Tap me"){}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
