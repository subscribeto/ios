import SwiftUI

/**
The main navigation menu view.

- Author: @elijahjcobb
- Since: v0.1.0
- Version: v0.1.0
*/
struct MenuView<T : View> : View {
	
	let links: [String : T] = [:]
	
    var body: some View {
		List {
			VStack {
				Text("S2")
			}
			Text("1")
			Text("2")
			Text("3")
			Text("4")
			Text("5")
			Text("6")
		}
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView<Text>()
    }
}
