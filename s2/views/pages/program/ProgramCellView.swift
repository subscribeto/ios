//
//  ProgramCellView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct ProgramCellView: View {
	
	var body: some View {
		HStack {
			VStack (alignment: .leading, spacing: 6) {
				Text("Cappucino")
					.bold()
					.frame(minWidth: 0, idealWidth: 200, maxWidth: .infinity, minHeight: 20, idealHeight: 20, maxHeight: 20, alignment: .leading)
				SmallStarView(rating: Double.random(in: 3...5))
				HStack (alignment: .center, spacing: 6) {
					TagView(Tag(name: "bookmark", color: .blue), size: 20)
					Image(systemName: "minus")
					Text("Coffee")
				}
				.foregroundColor(.gray)
			}
			Rectangle()
				.foregroundColor(Color(.systemGroupedBackground))
				.frame(width: 80, height: 80, alignment: .center)
				.cornerRadius(8)
		}
		.padding(8)
	}
	
}
struct ProgramCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProgramCellView()
    }
}
