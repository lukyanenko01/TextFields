//
//  MainTextField.swift
//  TextFieldsSwiftUI
//
//  Created by Vladimir Lukyanenko on 19.02.2023.
//

import SwiftUI

struct MainTextField: View {
    
    @State var label: String
    @State var placeHolder: String
    @State var word: Binding<String>
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(label)
                .font(.custom("Avenir Next Demi", size: 14))
                .foregroundColor(.white)

            TextField(placeHolder, text: word)
                .foregroundColor(.white)
                .accentColor(.white)
                .padding(.all, 7.5)
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color("textField"))
                )
                .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 1)
                        )
        
        }
        .padding(.vertical, 4)
    }
}
