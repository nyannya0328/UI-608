//
//  ContentView.swift
//  UI-608
//
//  Created by nyannyan0328 on 2022/07/09.
//

import SwiftUI

struct ContentView: View {
    @State var value : Int = 0
    var body: some View {
        NavigationView{
            
            VStack(spacing:30){
                
                RollingText(font:.largeTitle,fontWeight: .bold, value: $value)
                
                
                Button("Tap"){
                    
                    value = .random(in: 200...3000)
                }
                
                
            }
            .padding()
            .navigationTitle("Roolling Text")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
