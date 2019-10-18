//
//  PlaceDetailView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct PlaceDetailView: View {
	
    var body: some View {
		List {
			VStack (alignment: .leading, spacing: 12) {
				ImageCarouselView()
					.cornerRadius(5)
				HStack {
					VStack (alignment: .leading) {
						LargeStarView(rating: Double.random(in: 3...5))
						TagProgramView(tags: [
							Tag(name: "creditcard", color: .blue),
							Tag(name: "bag", color: .red),
							Tag(name: "hifispeaker", color: .green)
						], count: 8)
					}
					Spacer()
					SmallMapView()
				}
				Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
				Text("Programs")
					.font(.title)
			}
			ForEach(0 ..< 10) { i in
				NavigationLink (destination: ProgramDetailView()) {
					ProgramCellView()
				}
			}
		}
		.navigationBarTitle("5th & Elm Coffee")
    }
	
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
		NavigationView {
			PlaceDetailView()
		}
    }
}
