//
//  ContentView.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 26/10/2026.
//

import SwiftUI

struct ContentView: View { //View es un Protocol
    var body: some View {
        VStack {
            Text("🎯🎯🎯")
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(20), in: 1...100)
                Text("100")
            }
            Button("TRY"){
                //accion onClick
                print("tapped")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 480, height: 320))
        ContentView().preferredColorScheme(.dark)
    }
}
