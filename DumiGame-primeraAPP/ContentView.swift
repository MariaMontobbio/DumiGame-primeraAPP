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
                .font(.largeTitle)
            
            Text("89")
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(-1) //espaciado entre letras
            
            HStack {
                Text("1")
                    .fontWeight(.bold)

                Slider(value: .constant(20), in: 1...100)
                Text("100")
                    .fontWeight(.bold)
            }
            
            Button("TRY"){
                //accion onClick
                print("tapped")
            }
            .font(.title3)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(21)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 480, height: 320))
        ContentView().preferredColorScheme(.dark)
    }
}
