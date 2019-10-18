//
//  MoneyStatusView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct MoneyStatusView: View {
	
	let rating: Int = Int.random(in: 1...3)
	
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
		MoneyStatusView().previewLayout(.sizeThatFits)
    }
}
