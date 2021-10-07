//
//  Tesy.swift
//  uplabScreenDesing
//
//  Created by VB on 7.10.2021.
//
//1
NavigationView{
    HStack{
        Image("startScreenImage").ignoresSafeArea()
            .overlay(Text("Find Your Safe Way").font(.system(size: 60)).bold().foregroundColor(.white).shadow(radius: 100).frame(width: 300, height: 400).offset(y:80)).padding()
            .overlay(buttonUI().offset(y:300))
    }
}
//2
NavigationView{
    GeometryReader{geo in
       Spacer()
VStack{
    MapView().frame(width:600 ,height:500).ignoresSafeArea()
    HStack{
        MainScreenElements().padding(.bottom, 13).frame(width: geo.size.width*0.30, height: geo.size.height*0)
        Text("City Library")
            .frame(width: 140)
            .font(.title2)
            .offset(x: -265, y: -160)
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
                                .frame(width: geo.size.width*0.3, height: geo.size.height/15).offset(y:-180)
                                )
        })
}
}
}
