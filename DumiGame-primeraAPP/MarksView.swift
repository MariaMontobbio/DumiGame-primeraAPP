//
//  MarksView.swift
//  DumiGame-primeraAPP
//
//  Created by alumne on 09/11/2026.
//

import SwiftUI

struct MarksView: View {
    
    @Binding var sheetIsVisible: Bool
    
    var body: some View {
        ZStack{
            HStack {
                Text("MARKS")
                Spacer()
                Button(action: {
                    sheetIsVisible = false
                }, label: {Text("Close")})
            }
            VStack {
                
            }
        
        }.padding()
    }
}

struct MarkView: View {
    
    let numMark: Int
    let score: Int
    let time = 0
    
    var body: some View {
        HStack {
            
        }
    }
}

struct MarksView_Previews: PreviewProvider {
    static var previews: some View {
        MarksView(sheetIsVisible: .constant(true))
    }
}
