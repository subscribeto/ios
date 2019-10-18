//
//  PlaceCellView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct PlaceCellView: View {
   
	let tags: [Tag] = [
		Tag(name: "creditcard", color: .blue),
		Tag(name: "bag", color: .red),
		Tag(name: "hifispeaker", color: .green),
		Tag(name: "gamecontroller", color: .purple),
		Tag(name: "flame", color: .orange),
		Tag(name: "music.mic", color: .yellow),
		Tag(name: "suit.spade", color: .black)
	]
	
	var randArray: [Tag] {
		let shuffled = tags.shuffled()
		let sub = Array(shuffled[0...(Int.random(in: 1...3))])
		return sub
	}
	
    var body: some View {
		HStack {
			VStack (alignment: .leading, spacing: 6) {
				Text("5th & Elm Coffee House")
					.bold()
					.frame(minWidth: 0, idealWidth: 200, maxWidth: .infinity, minHeight: 20, idealHeight: 20, maxHeight: 20, alignment: .leading)
				HStack (alignment: .center, spacing: 4) {
					TagStackView(tags: randArray)
					Image(systemName: "plus")
						.rotationEffect(Angle(degrees: 45))
					Text("\(Int.random(in: 1...4))")
				}.foregroundColor(.gray)
				HStack {
					SmallStarView(rating: Double.random(in: 3...5))
					MoneyStatusView()
				}
			}
			Rectangle()
				.foregroundColor(Color(.systemGroupedBackground))
				.frame(width: 80, height: 80, alignment: .center)
				.cornerRadius(8)
		}
		.padding(8)
    }
	
}

struct PlaceCellView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceCellView()
    }
}
