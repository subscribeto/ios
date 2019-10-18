//
//  LargeStarView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct LargeStarItemView: View {
	
	var value: Double
	var size: CGFloat
	
	private var imageName: String {
		
		if value >= 1 { return "star.fill" }
		else if value < 1 && value > 0 { return "star.lefthalf.fill" }
		else { return "star" }
	}
	
	var body: some View {
		Image(systemName: imageName)
			.resizable()
			.frame(width: size * 1.05, height: size, alignment: .center)
			.font(.system(size: size, weight: .regular, design: .default))
	}
	
}

struct LargeStarView: View {
	
	var rating: Double
	var size: CGFloat = 26
	
	private var ratingRounded: String {
		
		let whole: Int = Int(rating.rounded(.down))
		let leftOver: Double = rating - Double(whole)
		let processedDecimal: String = (leftOver == 1 || leftOver == 0) ? "0" : "5"
		
		return "\(whole).\(processedDecimal)"
		
	}
	
    var body: some View {
		HStack (alignment: .center, spacing: 4) {
			LargeStarItemView(value: self.rating - 0, size: self.size)
			LargeStarItemView(value: self.rating - 1, size: self.size)
			LargeStarItemView(value: self.rating - 2, size: self.size)
			LargeStarItemView(value: self.rating - 3, size: self.size)
			LargeStarItemView(value: self.rating - 4, size: self.size)
			Text(self.ratingRounded)
				.bold()
				.font(.system(size: size/1.25, weight: .bold, design: .default))
		}
		.foregroundColor(.orange)
	}
}

struct LargeStarView_Previews: PreviewProvider {
    static var previews: some View {
		LargeStarView(rating: 4.99).previewLayout(.sizeThatFits)
    }
}
