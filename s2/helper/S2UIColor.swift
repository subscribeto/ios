import SwiftUI

/**
Provides the color palatte for the theming of S2.

You can change all colors used in the application through this `struct`.

- Author: @elijahjcobb
- Since: v0.1.0
- Version: v0.1.0
*/
struct S2UIColor {
	
	static let primary = Color(UIColor(red: 0.114, green: 0.565, blue: 0.859, alpha: 1.00))
	static let secondary = Color(UIColor(red: 0.514, green: 0.761, blue: 0.922, alpha: 1.00))
	static let darkBackground = Color(UIColor(red: 0.043, green: 0.208, blue: 0.314, alpha: 1.00))
	static let alternate = Color(UIColor(red: 1.000, green: 0.373, blue: 0.000, alpha: 1.00))
	static let lightBackground = Color(UIColor.white)
	static let white = Color(UIColor.white)
	static let black = Color(UIColor.black)
	static let yellow = Color(UIColor.yellow)
	static let green = Color(UIColor.green)
	static let red = Color(UIColor.red)
	
	static func colorWithAlpha(color: UIColor, alpha: Double) -> Color {
		
		var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
		color.getRed(&r, green: &g, blue: &b, alpha: &a)
		
		return Color(UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha)))
		
	}
	
}
