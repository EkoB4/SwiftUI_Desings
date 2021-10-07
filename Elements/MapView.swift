//
//  MapView.swift
//  uplabScreenDesing
//
//  Created by VB on 7.10.2021.
//

import SwiftUI
import MapKit
struct MapView: View {
    @State var MapKit = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.887367, longitude: 29.189348), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    var body: some View {
        Map(coordinateRegion: $MapKit)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
