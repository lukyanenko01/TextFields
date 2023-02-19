//
//  ContentView.swift
//  TextFieldsSwiftUI
//
//  Created by Vladimir Lukyanenko on 14.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var noDigitsText = ""
    
    var body: some View {
        VStack {
            Text("Text Fields")
                .padding()
                .font(.custom("Arial Bold", size: 34))
            
            VStack(spacing: -10) {
                Text("no digits field")
                    .font(.custom("Arial Bold", size: 13))
                    .padding(.trailing)
                TextField("Type Here", text: $noDigitsText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
