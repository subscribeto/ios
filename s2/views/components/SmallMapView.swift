import SwiftUI
import MapKit
import UIKit

/**
A view that displays a small `100x100` map with a pin on the center location.

- Author: @elijahjcobb
- Since: v0.1.0
- Version: v0.1.0
*/
struct SmallMapView: View {
	
	private let coordinate: CLLocationCoordinate2D
	
	/**
	Create a new `SmallMapView` instance.
	
	- Parameter lat: The latitude of the coordinate that should be displayed.
	- Parameter lng: The longitude of the coordinate that should be displayed.
	*/
	init(lat: Double, lng: Double) { self.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lng) }
	
	var body: some View {
		SmallMapViewRaw(coordinate: self.coordinate)
			.cornerRadius(5)
			.frame(width: 100, height: 100, alignment: .center)
	}
	
}

/**
A `MKMapView` wrapped for `SwiftUI` that is to be used for a `SmallMapView`.

- Author: @elijahjcobb
- Since: v0.1.0
- Version: v0.1.0
*/
struct SmallMapViewRaw: UIViewRepresentable {
	
	private let coordinate: CLLocationCoordinate2D
	
	/**
	Create a new `SmallMapViewRaw` instance.
	
	- Parameter coordinate: The coordinate to be used to center the view and add a pin.
	*/
	public init(coordinate: CLLocationCoordinate2D) { self.coordinate = coordinate }
	
    func makeUIView(context: Context) -> MKMapView {
		
        MKMapView(frame: .zero)
		
    }


    func updateUIView(_ view: MKMapView, context: Context) {
		
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
        SmallMapView(lat: 1, lng: 1).previewLayout(.sizeThatFits)
    }
}
