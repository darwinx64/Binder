//
//  Bundle+Localization.swift
//  Binder
//
//  Created by tiramisu on 4/16/25.
//

import Foundation

extension Bundle {
	static func makeLocalizationBundle(preferredLanguageCode: String? = Preferences.preferredLanguageCode) -> Bundle {
		if let preferredLangCode = preferredLanguageCode,
		   let bundle = Bundle(path: Bundle.main.path(forResource: preferredLangCode, ofType: "lproj")!) {
			return bundle
		}
		
		return Bundle.main
	}
	
	// MAKE SURE TO UPDATE THIS WHENEVER `Preferences.preferredLanguageCode` IS CHANGED!!
	static var preferredLocalizationBundle = makeLocalizationBundle()
}
