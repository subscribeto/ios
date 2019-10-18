//
//  TagProgramView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct TagProgramView: View {
	
	var tags: [Tag]
	var count: Int
	
	private let offsetSize: Int = 12
	private let frameSize: Int = 36
	
    var body: some View {
        HStack (alignment: .center, spacing: 1.0) {
			TagStackView(tags: self.tags, offsetSize: self.offsetSize, frameSize: self.frameSize)
			Image(systemName: "plus")
				.rotationEffect(Angle(degrees: 45.0))
				.frame(width: 30, height: 30, alignment: .center)
				.foregroundColor(.gray)
			Text("\(self.count)")
				.foregroundColor(.gray)
		}
    }
	
}

struct TagProgramView_Previews: PreviewProvider {
    static var previews: some View {
        TagProgramView(tags: [
			Tag(name: "creditcard", color: .blue),
			Tag(name: "bag", color: .red),
			Tag(name: "hifispeaker", color: .green)
		], count: 12).previewLayout(.sizeThatFits)
    }
}
