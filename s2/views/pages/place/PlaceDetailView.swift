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
						LargeStarView()
						HStack (alignment: .center, spacing: 1.0) {
							TagStackView([
								Tag(name: "creditcard", color: .blue),
								Tag(name: "bag", color: .red),
								Tag(name: "hifispeaker", color: .green),
								Tag(name: "gamecontroller", color: .purple),
								Tag(name: "creditcard", color: .gray),
								Tag(name: "bag", color: .orange),
								Tag(name: "hifispeaker", color: .yellow),
								Tag(name: "gamecontroller", color: .black)
							])
							Image(systemName: "plus")
								.rotationEffect(Angle(degrees: 45.0))
								.frame(width: 30, height: 30, alignment: .center)
								.foregroundColor(.gray)
							Text("4")
								.foregroundColor(.gray)
							Spacer()
						}
					}
					SmallMapView()
				}
				Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
				Text("Programs")
					.font(.title)
			}
			ForEach(0 ..< 10) { i in
				ProgramCellView()
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
