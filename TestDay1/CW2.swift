//
//  CW2.swift
//  TestDay1
//
//  Created by Eng. Norii on 5/2/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import SwiftUI

struct CW2: View {
    @State var pageNumber = ""
    var body: some View {
        ZStack {
            BG()
            VStack {
                Text("Page \(pageNumber)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                TextField("رقم الصفحة الحالية", text: $pageNumber)
                    .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
               .padding()
                    .multilineTextAlignment(.center)
                    .frame(height:70)
                
                
                
                
            }
        }
    }
}

struct CW2_Previews: PreviewProvider {
    static var previews: some View {
        CW2()
    }
}
