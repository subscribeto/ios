//
//  PlaceListView.swift
//  s2
//
//  Created by Elijah Cobb on 10/18/19.
//  Copyright © 2019 Apollo Technology. All rights reserved.
//

import SwiftUI

struct PlaceListView: View {
	
   var body: some View {
		NavigationView {
			List {
				ForEach(0 ..< 10) { i in
					NavigationLink(destination: PlaceDetailView()) {
						PlaceCellView()
					}
				}
			}
			.navigationBarTitle("Places")
		}
	}
	
}

struct PlaceListView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceListView()
    }
}
