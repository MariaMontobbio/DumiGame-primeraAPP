//
//  ContentView.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 26/10/2026.
//

import SwiftUI

struct ContentView: View { //View es un Protocol
    
    @State private var alertIsVisisble = false //esta variabe gestiona un estado (property doupper state)
    @State var sliderValue = 20.0 //State porque dentro del body van a cambiarse de valor | @ porque se muestran simultaneamente al cambiarse de valor
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
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

                    Slider(value: $sliderValue, in: 1...100)
                    Text("100")
                        .fontWeight(.bold)
                }
                
                Button("TRY"){
                    self.alertIsVisisble = true
                }
                .font(.title3)
                .foregroundColor(.white)
                .padding()
                .background(Color.accentColor)
                .cornerRadius(21)
            }
            .padding()
        }
        .alert(isPresented: $alertIsVisisble) {
            Alert(
                title: Text("Hello"),
                message: Text("This is my fisrt alert"),
                dismissButton: .default(Text("Got it")) {
                    print("alert is close")
                }
            )
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
