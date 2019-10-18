//
//  TagStackView.swift
//  s2
//
//  Created by Elijah Cobb on 10/15/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct TagStackViewItem: View {
	
	let tag: Tag
	let index: Int
	let size: Int
	let frameSize: Int
	let offSetSize: Int
	
	var body: some View {
		TagView(Tag(name: tag.name, color: tag.color), size: frameSize)
			.offset(CGSize(width: -self.offSetSize * self.index + 1, height: 0))
			.zIndex(Double(self.size - self.index))
			.tag(self.index)
	}
	
}

struct TagStackView: View {
	
	let tags: [Tag]
	let offsetSize: Int = 8
	let frameSize: Int = 24
	
	public init (_ t: [Tag]) { self.tags = t }
	
	var frameWidth: Int {
		let size = self.tags.count
		return (size * frameSize) - ((size - 1) * offsetSize) + 2
	}
	
    var body: some View {
		HStack (alignment: .center, spacing: 0) {
			ForEach(0 ..< tags.count) { i in
				TagStackViewItem(tag: self.tags[i], index: i, size: self.tags.count, frameSize: self.frameSize, offSetSize: self.offsetSize)
			}
		}.frame(width: CGFloat(frameWidth), height: CGFloat(self.frameSize), alignment: .leading)
    }
}

struct TagStackView_Previews: PreviewProvider {
    static var previews: some View {
		TagStackView([
			Tag(name: "creditcard", color: .blue),
			Tag(name: "bag", color: .red),
			Tag(name: "hifispeaker", color: .green),
			Tag(name: "gamecontroller", color: .purple),
			Tag(name: "creditcard", color: .gray),
			Tag(name: "bag", color: .orange),
			Tag(name: "hifispeaker", color: .yellow),
			Tag(name: "gamecontroller", color: .black)
		]).previewLayout(.sizeThatFits)
    }
}
