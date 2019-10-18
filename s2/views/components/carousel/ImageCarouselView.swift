//
//  ImageCarouselView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

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
        ImageCarouselView()
    }
}
