//
//  ContentView.swift
//  Random Food
//
//  Created by Phuong Vu on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State var foodChoice = "food1"
    var body: some View {
        ZStack{
            Image("background").ignoresSafeArea()
            VStack {
                
              Spacer()
                Image(foodChoice) .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Button(action: {
                        //print console
                       //randomize number between 1 and 5
                       //let foodRand = Int.random(in:1...5)
                       foodChoice = "food"+String(Int.random(in:1...5))
                    
                       }, label:{
                    Image("blackButton")
                
                }
                )
                Spacer()
                
            }.padding()
           
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
