//
//  ContentView.swift
//  uplabScreenDesing
//
//  Created by VB on 6.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HStack{
                Image("startScreenImage").ignoresSafeArea()
                    .overlay(Text("Find Your Safe Way").font(.system(size: 60)).bold().foregroundColor(.white).shadow(radius: 100).frame(width: 300, height: 400).offset(y:80)).padding()
                    .overlay(buttonUI().offset(y:300))
            }
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct buttonUI : View {
    var body: some View{
        NavigationLink(
            destination: startScreen() ,
            label: {
                Text("Let's Start")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 30)
                                    .fill(Color("buttonColor"))
                                    .frame(width: 300, height: 70))
            })
    }
}
