import UIKit

public extension UICollectionView {
  
  func register<T: UICollectionViewCell>(_: T.Type) {
    register(T.self, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
  }
  
  func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as? T else {
      assertionFailure("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
      return T()
    }
    return cell
  }
}

extension UICollectionViewCell: ReusableView {}

public extension NSObject {
  static var reuseIdentifier: String {
    return NSStringFromClass(self)
  }
}
