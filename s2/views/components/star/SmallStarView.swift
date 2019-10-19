//
//  SmallStarView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

/**
A view for displaying a star logo and a rating based off of a rating provided.
- Author: Elijah Cobb
- Version: 0.1.0
- Since: 0.1.0
*/
struct SmallStarView: View {
	
	var rating: Double
    
	var body: some View {
		HStack (alignment: .center, spacing: 2) {
			Image(systemName: "star.fill")
				.font(.system(size: 14, weight: .regular, design: .default))
			Text(String(format: "%.1f", self.rating))
		}.foregroundColor(.orange)
	}
	
}

struct SmallStarView_Previews: PreviewProvider {
    static var previews: some View {
		SmallStarView(rating: Double.random(in: 3...5)).previewLayout(.sizeThatFits)
    }
}
