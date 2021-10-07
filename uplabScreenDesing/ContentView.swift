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
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
