//
//  MapView.swift
//  nationaldayhackathon
//
//  Created by Jhala family on 22/7/23.
//

import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

struct MapView: View {
    let locations = [
        Location(name: "Merlion", coordinate: CLLocationCoordinate2D(latitude: 1.2867, longitude: 103.8545)),
        Location(name: "Gardens By The Bay", coordinate: CLLocationCoordinate2D(latitude: 1.2816, longitude: 103.8636)),
        Location(name: "Marina Bay Sands", coordinate: CLLocationCoordinate2D(latitude: 1.2834, longitude: 103.8607)),
        Location(name: "Esplanade", coordinate: CLLocationCoordinate2D(latitude: 1.2895, longitude: 103.8556)),
        Location(name: "Floating Apple Office", coordinate: CLLocationCoordinate2D(latitude: 1.2816, longitude: 103.8636)),
        Location(name: "Universal Studios", coordinate: CLLocationCoordinate2D(latitude: 1.2540, longitude: 103.8238)),
        Location(name: "Sentosa", coordinate: CLLocationCoordinate2D(latitude: 1.2494, longitude: 103.8303)),
        Location(name: "Singapore Flyer", coordinate: CLLocationCoordinate2D(latitude: 1.2893, longitude: 103.8631)),
        Location(name: "Singapore Zoo", coordinate: CLLocationCoordinate2D(latitude: 1.4043, longitude: 103.7930)),
        Location(name: "Orchard Road", coordinate: CLLocationCoordinate2D(latitude: 1.3048, longitude: 103.8318))
    ]
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 1.3521, longitude: 103.8198), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $mapRegion, annotationItems: locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        if location.name == "Merlion" {
                            Merlion()
                        }
                    } label: {
                        Image(systemName: "mappin.circle.fill")
                            .resizable()
                            .foregroundColor(.red)
                    }
                }
            }
        }
    }
}


struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
