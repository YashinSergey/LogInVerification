//
// Created by mr.Blue on 26.03.2022.
//

import Foundation
import UIKit

extension UIColor {

    private struct HEX {
        static let h492AD8 = UIColor(hexString: "#492AD8")
        static let hF7F6FA = UIColor(hexString: "#F7F6FA")
        static let h00D2E0 = UIColor(hexString: "#00D2E0")
    }

    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }

    struct Login {
        /// #492AD8
        static var loginPageBackground: UIColor { HEX.h492AD8 }
        /// #F7F6FA
        static var loginFieldBackground: UIColor { HEX.hF7F6FA }
        /// #4765FF
//        static var mainBlue: UIColor { UIColor.HEX.h4765FF }
        static var singnInButtonColor: UIColor { UIColor.HEX.h00D2E0 }
    }
}