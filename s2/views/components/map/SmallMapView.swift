//
//  SmallMapView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI
import MapKit
import UIKit

struct SmallMapView: View {
	
	var body: some View {
		SmallMapViewRaw()
			.cornerRadius(5)
			.frame(width: 100, height: 100, alignment: .center)
	}
	
}

struct SmallMapViewRaw: UIViewRepresentable {
	
    func makeUIView(context: Context) -> MKMapView {
		
        MKMapView(frame: .zero)
		
    }


    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 47.121967, longitude: -88.569106)
		let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
		
		
		let pin = MKPointAnnotation()
		pin.coordinate = coordinate
		view.addAnnotation(pin)
		
        view.setRegion(region, animated: true)
		view.isUserInteractionEnabled = false
    }
}

struct SmallMapView_Previews: PreviewProvider {
    static var previews: some View {
        SmallMapView()
    }
}
