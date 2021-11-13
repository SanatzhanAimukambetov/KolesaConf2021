import UIKit

final class HomeCollectionViewFlowLayout: UICollectionViewFlowLayout {
  
  override func prepare() {
    super.prepare()

    guard let collectionView = collectionView else { return }

    scrollDirection = .vertical
    collectionView.showsHorizontalScrollIndicator = true

    itemSize = CGSize(
      width: (collectionView.frame.width - 51) / 2,
      height: (collectionView.frame.width - 51) / 2 * 220 / 161
    )
    minimumInteritemSpacing = 11
    minimumLineSpacing = 11
    sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
  }
}
