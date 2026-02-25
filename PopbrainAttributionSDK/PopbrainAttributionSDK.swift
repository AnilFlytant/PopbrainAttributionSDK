//
//  PopbrainAttributionSDK.swift
//  PopbrainAttributionSDK
//
//  Created by Aura on 25/02/26.
//

import Foundation

public final class MyTracker {
    public static let shared = MyTracker()
    
    // Customers can see this
    public func initialize(apiKey: String) {
        print("SDK Initialized with \(apiKey)")
    }
}
