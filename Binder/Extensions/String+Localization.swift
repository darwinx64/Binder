//
//  String+Localization.swift
//  Binder
//
//  Created by tiramisu on 4/16/25.
//

import Foundation

extension String {
	static func localized(_ name: String) -> String {
		return NSLocalizedString(name, bundle: .preferredLocalizationBundle, comment: "")
	}
	
	static func localized(_ name: String, arguments: CVarArg...) -> String {
		return String(format: NSLocalizedString(name, bundle: .preferredLocalizationBundle, comment: ""), arguments: arguments)
	}
	
	func localized() -> String {
		return String.localized(self)
	}
}
