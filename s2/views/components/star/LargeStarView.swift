//
//  LargeStarView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct LargeStarView: View {
    var body: some View {
		HStack (spacing: 4) {
			Image(systemName: "star.fill")
			Image(systemName: "star.fill")
			Image(systemName: "star.fill")
			Image(systemName: "star.lefthalf.fill")
			Image(systemName: "star")
			Text("3.7")
				.bold()
		}
		.foregroundColor(.orange)
	}
}

struct LargeStarView_Previews: PreviewProvider {
    static var previews: some View {
        LargeStarView()
    }
}
