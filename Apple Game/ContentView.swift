//
//  ContentView.swift
//  Apple Game
//
//  Created by 宋文洁 on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var picture1 = "apple"
    @State private var picture2 = "cherry"
    @State private var picture3 = "star"
    
    @State private var score = 1000
    
    
    var body: some View {

        VStack {

            
            Text("SwiftUI Game!").font(.title)
            
            Spacer()
            
            Text(String(score))
            
            Spacer()
            
            HStack {
                Spacer()
                
                Image(picture1)
                
                Image(picture2)
                
                Image(picture3)
                
                Spacer()
            }
            
            Spacer()
            
            Button("Spin") {
                let choice = ["apple", "cherry", "star"]
                
                let pic1 = Int.random(in: 0...2)
                let pic2 = Int.random(in: 0...2)
                let pic3 = Int.random(in: 0...2)
                
                picture1 = choice[pic1]
                picture2 = choice[pic2]
                picture3 = choice[pic3]
                
                if pic1 == pic2 && pic2 == pic3 {
                    score += 5
                }else {
                    score -= 5
                }
                
                
            }
            .frame(width: 150, height: 40)
            .background(.pink)
            .cornerRadius(20)
            .foregroundColor(.white)
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
