//
//  BundleExtensions.swift
//  Mapbox-iOS-Examples
//
//  Created by Roman Blum on 20.11.16.
//  Copyright © 2016 rmnblm. All rights reserved.
//

import Foundation

extension Bundle {
    func plist<T>(named: String, key: String) -> T? {
        guard let path = Bundle.main.path(forResource: "Keys", ofType: "plist") else {
            return nil
        }

        guard let dict = NSDictionary(contentsOfFile: path) else {
            return nil
        }

        return dict[key] as? T
    }
}
