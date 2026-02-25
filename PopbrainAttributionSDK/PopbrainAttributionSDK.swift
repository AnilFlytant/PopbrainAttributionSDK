//
//  PopbrainAttributionSDK.swift
//  PopbrainAttributionSDK
//
//  Created by Aura on 25/02/26.
//

import Foundation
import UIKit

public final class MyTracker {
    public static let shared = MyTracker()
    
    // Customers can see this
    public func initialize(apiKey: String) {
        print("SDK Initialized with \(apiKey)")
    }

    public func checkForAttribution() {
        let pasteboard = UIPasteboard.general
        
        // 1. Check if there's even a string there (silent check)
        guard pasteboard.hasStrings else { return }
        
        // 2. iOS 14+ Pattern Detection (Checks for a URL without triggering the privacy popup)
        let patterns: Set<PartialKeyPath<UIPasteboard.DetectedValues>> = [\.probableWebURL]
        pasteboard.detectPatterns(for: patterns) { result in
            switch result {
            case .success(let detectedValues) where detectedValues.contains(\.probableWebURL):
                // 3. Match found! Now we read the actual string (This triggers the banner)
                DispatchQueue.main.async {
                    if let content = pasteboard.string, content.contains("popbrain_attribution") {
                        self.processAttribution(content)
                    }
                }
            case .failure(let error):
                print("Popbrain: Pattern detection failed: \(error)")
            default:
                break
            }
        }
    }
    
    private func processAttribution(_ urlString: String) {
        print("Popbrain: Attribution Found -> \(urlString)")
        // Logic to send this to your server goes here
    }
}
