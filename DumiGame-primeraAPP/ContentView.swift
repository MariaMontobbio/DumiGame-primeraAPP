//
//  ContentView.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 26/10/2026.
//

import SwiftUI

struct ContentView: View { //View es un Protocol
    
    @State private var alertIsVisisble = false //esta variabe gestiona un estado (property doupper state)
    @State var sliderValue = Double(Game.maxValue - Game.minValue)/2.0 //State porque dentro del body van a cambiarse de valor | @ porque se muestran simultaneamente al cambiarse de valor
    
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
                SliderView(value: $sliderValue, min: Game.minValue, max: Game.maxValue)
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
                    self.sliderValue = Double(Game.maxValue - Game.minValue)/2.0
                }
            )
        }
    }
}

struct SliderView: View {
    
    @Binding var value: Double //se sincronizan los valores de la variable con el super view
    let min : Int
    let max : Int
    
    var body: some View {
        HStack {
            Text("\(min)")
                .fontWeight(.bold)

            Slider(value: $value, in: Double(min)...Double(max)) //$ cuando necesito leeer y sbreescribir sobre esa variable
            Text("\(max)")
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
