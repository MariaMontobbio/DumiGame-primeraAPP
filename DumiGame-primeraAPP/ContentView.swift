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
    
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("🎯🎯🎯")
                    .font(.largeTitle)
                
                Text("\(game.target)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .kerning(-1) //espaciado entre letras
                
                //Slider
                SliderView(value: $sliderValue)
                Text("\(sliderValue)")
                
                Button("TRY"){
                    game.calculatePoints(sliderValue: sliderValue)
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
                title: Text("Congratulations"),
                message: Text("You've won \(game.points) points"),
                dismissButton: .default(Text("Got it")) {
                    game.startNewGame()
                    self.sliderValue = 20.0
                }
            )
        }
    }
}

struct SliderView: View {
    
    @Binding var value: Double //se sincronizan los valores de la variable con el super view
    
    var body: some View {
        HStack {
            Text("1")
                .fontWeight(.bold)

            Slider(value: $value, in: 1...100) //$ cuando necesito leeer y sbreescribir sobre esa variable
            Text("100")
                .fontWeight(.bold)
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
