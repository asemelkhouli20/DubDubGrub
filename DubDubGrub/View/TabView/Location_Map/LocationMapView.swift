//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Asem on 27/02/2022.
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var resign = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.33156, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $resign).ignoresSafeArea()
            VStack {
                LogoView().shadow(radius: 10)
                Spacer()
            }
        }
    }
    
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}

struct LogoView: View {
    var body: some View {
        Image("ddg-map-logo")
            .resizable()
            .scaledToFit()
            .frame(height:70)
            .padding()
    }
}
