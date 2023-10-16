//
//  ContentView.swift
//  simbolos
//
//  Created by MacOsX on 10/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "atom")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        Text("ETPS4")
            .font(.largeTitle)
            .underline()
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        + Text("Ciclo 01-2023")
        + Text(" UTEC ")
            .font(.body)
            .bold()
            + Text("Laboratorio de informatica 2")
            .font(.headline)
            .foregroundColor(.green)
       
        Button(
            action: {
                print("My mommy!")
            }, label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(
                    Image(systemName: "cpu")
                        .foregroundColor(.white)
                        .font(.system(size: 70, weight: .bold))
                    )
                Text("Click me")
            }
        )
        VStack
        {
            Text(Date(),style: .date)
            Text(Date(),style: .time)
            Text(Date(),style: .relative)
            Text(Date(),style: .timer)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
