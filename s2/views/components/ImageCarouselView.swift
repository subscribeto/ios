import SwiftUI

/**
A view that displays images and lets the user swipe through them in a carousel fashion.

- Author: @elijahjcobb
- Since: v0.1.0
- Version: v0.1.0
*/
struct ImageCarouselView: View {
   
	var body: some View {
		Rectangle()
			.foregroundColor(Color(.systemGroupedBackground))
			.listRowInsets(EdgeInsets())
			.frame(minWidth: 0, idealWidth: 80, maxWidth: .infinity, minHeight: 20, idealHeight: 180, maxHeight: 180, alignment: .center)
	}
	
}

struct ImageCarouselView_Previews: PreviewProvider {
    static var previews: some View {
		ImageCarouselView().previewLayout(.sizeThatFits)
    }
}
