//
//  ContentView.swift
//  TestDay1
//
//  Created by Eng. Norii on 5/1/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//athkar app

import SwiftUI

struct ContentView: View {
    

    
    @State var thekr = "اضغط هنا"
    
    var body: some View {
        ZStack {
            BG()
            Text(thekr)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .multilineTextAlignment(.center)
                
                .onTapGesture {
                    self.thekr = athkar.randomElement()!
            }
            Text(thekr)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .multilineTextAlignment(.center)
                
                .onTapGesture {
                    self.thekr = athkar.randomElement()!
            }
            Text(thekr)
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .multilineTextAlignment(.center)
                
                .onTapGesture {
                    self.thekr = athkar.randomElement()!
            }
            
        }
    }
}


struct BG: View {
    var body: some View {
        ZStack {
            Image("BACKGROUND")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            /*Text("سبحان الله")
             .bold()
             .font(.largeTitle)
             .foregroundColor(.white)
             .shadow(radius: 10)
             */
            
            VStack {
                Image("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
            BG()
        }
    }
}
