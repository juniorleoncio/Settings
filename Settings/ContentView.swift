//
//  ContentView.swift
//  Settings
//
//  Created by leoncio junior on 05/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var automaticoLigado = false
    @State var brilhoDaTela = 50.0
    
    var body: some View {
        
        Form {
            
            Section("appearence") {
                HStack {
                    Text("Automatic")
                    Spacer()
                    Toggle("",isOn: $automaticoLigado)
                    
                }
                
                HStack {
                    Text("Options")
                    Spacer()
                    Text("Light Until Sunset")
                        .foregroundColor(.gray)
                        .font(.system(.callout))
                }
                
            }
            
            Section("Brightness") {
                HStack {
                    Image(systemName: "sun.max.fill")
                        .foregroundColor(.gray)
                    Slider(value: $brilhoDaTela, in: 1...100)
                    Image(systemName: "sun.max.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.gray)
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
