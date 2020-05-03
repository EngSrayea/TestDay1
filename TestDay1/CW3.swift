//
//  CW3.swift
//  TestDay1
//
//  Created by Eng. Norii on 5/2/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
// athkar app

import SwiftUI

struct ThekrModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.largeTitle)
            
            .foregroundColor(.white)
            .font(.system(size: 20, weight: .bold, design: .default))
            .padding()
            .multilineTextAlignment(.center)
        
    }
}


struct CW3: View {
    @State var thekr = athkar.randomElement()!
    @State var counter = 0
    var body: some View {
        ZStack{
            BG()
            VStack{
                Text(thekr).modifier(ThekrModifier())
                
                    /*.font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.center)*/
                    
                Text("\(counter)")
                    .bold()
                    .padding(.horizontal, 70)
                    .font(.system(size:40))
                    .foregroundColor(.white)
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2028842038)))
                    .clipShape(Capsule())
                    .animation(.easeInOut)
      
                
            }
        }.onTapGesture {
                self.counter += 1
        }.onLongPressGesture {
            self.thekr = athkar.randomElement()!
            self.counter = 0
        }
        .animation(.default)
    }
}


struct CW3_Previews: PreviewProvider {
    static var previews: some View {
        CW3()
    }
}

