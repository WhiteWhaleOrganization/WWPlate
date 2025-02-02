//
//  BMPlayerProtocols.swift
//  Pods
//
//  Created by BrikerMan on 16/4/30.
//
//

import UIKit

extension BMPlayerControlView {
    public enum ButtonType: Int {
        case play       = 101
        case pause      = 102
        case back       = 103
        case fullscreen = 105
        case replay     = 106
    }
}

extension BMPlayer {
    static public func formatSecondsToString(_ seconds: TimeInterval) -> String {
        if seconds.isNaN {
            return "00:00:00"
        }
        let hour = Int(seconds / 3600)
        let min = Int(seconds.truncatingRemainder(dividingBy: 3600) / 60)
        let sec = Int(seconds.truncatingRemainder(dividingBy: 60))
        return String(format: "%02d:%02d:%02d", hour, min, sec)
    }
}
