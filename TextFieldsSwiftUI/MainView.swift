//
//  MainView.swift
//  TextFieldsSwiftUI
//
//  Created by Vladimir Lukyanenko on 14.02.2023.
//

import SwiftUI

struct MainView: View {
    
    @State var noDigitsText = ""
    @State var inputLimitText = ""
    @State var maskText = ""
    @State var onLinkInputText = ""
    @State var passwordText = ""

    
    var body: some View {
        VStack {
            Text("Text Fields")
                .font(.custom("Avenir Next Demi Bold ", size: 34))
                .foregroundColor(.white)

            MainTextField(label: "no digits field", placeHolder: "Type Here", word: $noDigitsText)
            MainTextField(label: "Input limit", placeHolder: "Type Here", word: $inputLimitText)
            MainTextField(label: "Only characters", placeHolder: "Type Here", word: $maskText)
            MainTextField(label: "Link", placeHolder: "Type Here", word: $onLinkInputText)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Validation rules")
                    .font(.custom("Avenir Next Demi", size: 13))
                    .foregroundColor(.white)

               
                    TextField("Password", text: $passwordText)
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
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Min length 8 characters.")
                        .font(.custom("Arial Bold", size: 13))
                        .padding(.top, 20)
                    .foregroundColor(.white)
                    Text("Min 1 digit,")
                        .font(.custom("Arial Bold", size: 13))
                        .foregroundColor(.white)

                    Text("Min 1 lowercase,")
                        .font(.custom("Arial Bold", size: 13))
                        .foregroundColor(.white)

                    Text("Min 1 capital required.")
                        .font(.custom("Arial Bold", size: 13))
                        .foregroundColor(.white)
                }


            }
            .padding(.bottom, 20)
            Spacer()
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Go Tab Bar")
                    .font(.custom("Arial Bold", size: 19))
                    .foregroundColor(.white)
            })
            .frame(width: screen.width-80, height: 28)
            .padding()
            .background(Color("buttonBackground"))
            .cornerRadius(16)
            Spacer()
        }
       
        .padding()
        .background(Image("space"))
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
