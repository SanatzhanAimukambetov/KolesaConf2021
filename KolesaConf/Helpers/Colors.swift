import UIKit

public enum ColorName {
  case darkblue
  case gray
  case mint
  case velvet
  
  public var value: UIColor {
    switch self {
    case .darkblue: return UIColor(hex: 0x1F1E3D)
    case .gray: return UIColor(hex: 0x8F8F9E)
    case .mint: return UIColor(hex: 0x61C6AE)
    case .velvet: return UIColor(hex: 0x8683D7)
    }
  }
}

extension UIColor {
  convenience init(red: Int, green: Int, blue: Int) {
    assert(red >= 0 && red <= 255, "Invalid red component")
    assert(green >= 0 && green <= 255, "Invalid green component")
    assert(blue >= 0 && blue <= 255, "Invalid blue component")
    
    self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
  }
  
  convenience init(hex: Int) {
    self.init(
      red: (hex >> 16) & 0xFF,
      green: (hex >> 8) & 0xFF,
      blue: hex & 0xFF
    )
  }
}

