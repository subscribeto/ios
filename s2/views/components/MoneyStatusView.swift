import SwiftUI

/**
A view to display a variable amount of dollar sign symbols to denote the price of an object.

- Author: @elijahjcobb
- Since: v0.1.0
- Version: v0.1.0
*/
struct MoneyStatusView: View {
	
	private let rating: Int
	
	/**
	Create a new `MoneyStatusView`.
	
	- Parameter rating: The amount of dollar signs you wish to be displayed.
	*/
	init(rating: Int) { self.rating = rating }
	
	var body: some View {
		HStack (alignment: .center, spacing: 0) {
			ForEach(0 ..< self.rating) { i in
				Text("$")
					.foregroundColor(.gray)
			}
		}.foregroundColor(.green)
	}
	
}


struct MoneyStatusView_Previews: PreviewProvider {
    static var previews: some View {
		MoneyStatusView(rating: Int.random(in: 1...5)).previewLayout(.sizeThatFits)
    }
}
