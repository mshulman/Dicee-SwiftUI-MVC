//
//  ContentView.swift
//  Dicee-SwuiftUI
//
//  Created by Michael Shulman on 10/22/19.
//  Copyright © 2019 Michael Shulman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var diceeModel = DiceeModel()
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: diceeModel.die[1] ?? 1)
                    DiceView(n: diceeModel.die[2] ?? 1)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.diceeModel.roll()
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding()
                    
                }
                .background(Color.red)
                .onAppear() {
                    self.diceeModel.roll()
                }
            }
        }
    }
}

struct DiceView: View {
    let n: Int
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

