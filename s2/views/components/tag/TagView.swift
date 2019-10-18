//
//  Tag.swift
//  s2
//
//  Created by Elijah Cobb on 10/15/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct TagView: View {
	
	let tag: Tag
	let size: CGFloat
	
	public init(_ t: Tag, size s: Int) { self.tag = t; self.size = CGFloat(s) }
	
    var body: some View {
		Image(systemName: tag.name)
			.frame(width: size, height: size, alignment: .center)
			.background(tag.color)
			.foregroundColor(.white)
			.font(.system(size: size * 0.5, weight: .bold, design: .default))
			.cornerRadius(size/2)
    }
}

struct TagView_Previews: PreviewProvider {
    static var previews: some View {
		TagView(Tag(name: "creditcard", color: .red), size: 20)
			.previewLayout(.sizeThatFits)
    }
}
