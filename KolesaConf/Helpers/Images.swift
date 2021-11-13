import UIKit

public enum Images {
  public enum Common: String {
    case clock
  }
  public enum Home: String {
    case amanzhol
    case anatolyi
    case artem
    case askhat
    case dmitryi
    case erden
    case ilyas
    case madina
    case rustem
    case sanatzhan
    case temirlan
  }
}

public extension Images.Common {
  var image: UIImage? {
    UIImage(named: rawValue)
  }
}

public extension Images.Home {
  var image: UIImage? {
    UIImage(named: rawValue)
  }
}
