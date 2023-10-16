//
//  ContentView.swift
//  Textfield
//
//  Created by MacOsX on 10/15/23.
//

import SwiftUI

struct ContentView: View {
    @State var user:String=""
    @State var password:String=""
    
    var body: some View {
        VStack{
            Text("INCIO DE SESION :D")
                .font(.title)
                .bold()
                
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(
                width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/
                )
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            TextField("Usuario",text:$user)
                .keyboardType(.emailAddress)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(
                    Color.gray
                        .opacity(0.3)
                )
                .cornerRadius(6)
                .padding(.top,40)
                .padding(.horizontal,40)
                .onChange(of: user, perform: { value in
                    print("el valor es \(value)")
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                })
            SecureField       ("Password",          text:$password)
                
                .keyboardType(.default)
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(
                    Color.gray
                        .opacity(0.3)
                )
                .cornerRadius(6)
                .padding(.top,40)
                .padding(.horizontal,40)
                .onChange(of: password, perform: { value in
                    print("el valor es \(value)")
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
                })
            Button("Inresar"){
                print("*************")
                print("Usuario: \(user)")
                print("Password: \(password)")
            }
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
