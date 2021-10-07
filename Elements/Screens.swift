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
            GeometryReader{geo in
               Spacer()
        VStack{
            MapView().frame(width:600 ,height:600).ignoresSafeArea()
            HStack{
                MainScreenElements().frame(width: geo.size.width*0.30, height: geo.size.height*0)
                Text("City Library")
                    .bold()
                    .frame(width: 140)
                    .font(.title2)
                    .offset(x: -265, y: -150)
                    .foregroundColor(.white)
                Text("List Available")
                    .frame(width:140)
                    .font(.subheadline)
                    .offset(x: -410, y: -60)
                    .foregroundColor(.gray)
            }
            NavigationLink(
                destination: Text("Destination"),
                label: {
                    Text("CHANGE").font(.title3).foregroundColor(.orange).bold().offset(y:-180)
                        .background(RoundedRectangle(cornerRadius: 30)
                                        .fill(Color.white)
                                        .frame(width: geo.size.width*0.3, height: geo.size.height/20).offset(y:-180)
                                        )
                })
        }
    }
   }
}

struct Screen_Previews : PreviewProvider {
    static var previews: some View{
        startScreen()
        //MainScreenElements()
        cityList()
    }
}

struct MainScreenElements :View {
    var body: some View{
        Spacer()
        HStack{
       RoundedRectangle(cornerRadius: 40)
        .frame(width: 430, height: 400).foregroundColor(Color("rectangleColor")).offset(x:222)
            RoundedRectangle(cornerRadius: 50).foregroundColor(.white)
                .frame(width: 440, height: 360).ignoresSafeArea().offset(x:-220 ,y: 80)
    }
  }
}
}

struct cityList : View {
    var body: some View{
        VStack{
            ScrollView(.horizontal){
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 160)
                    .foregroundColor(.blue.opacity(0.2))
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 300, height: 160).offset(x:310 ,y: -167)
                    .foregroundColor(.blue.opacity(0.2))
            }
        }
    }
}
