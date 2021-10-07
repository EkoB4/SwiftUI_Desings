//
//  Screens.swift
//  uplabScreenDesing
//
//  Created by VB on 6.10.2021.
//
import SwiftUI

struct startScreen : View {
    var body: some View{
        NavigationView{
            HStack{
                Image("startScreenImage").ignoresSafeArea()
                    .overlay(Text("Find Your Safe Way").font(.system(size: 60)).bold().foregroundColor(.white).shadow(radius: 100).frame(width: 300, height: 400).offset(y:80)).padding()
                    .overlay(buttonUI().offset(y:300))
            }
        }
    }
}

struct buttonUI : View {
    var body: some View{
        NavigationLink(
            destination: ContentView() ,
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
struct Screen_Previews : PreviewProvider {
    static var previews: some View{
        startScreen()
        //MainScreenElements()
    }
}

struct MainScreenElements :View {
    var body: some View{
        Spacer()
        HStack{
       RoundedRectangle(cornerRadius: 40)
        .frame(width: 430, height: 400).foregroundColor(Color("rectangleColor")).offset(x:222)
            RoundedRectangle(cornerRadius: 50).foregroundColor(.white)
                .frame(width: 440, height: 360).ignoresSafeArea().offset(x:-220 ,y: 70)
    }
  }
}
