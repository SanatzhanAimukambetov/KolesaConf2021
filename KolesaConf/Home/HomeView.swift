import UIKit
import SnapKit

final class HomeView: UIView {
  
  // MARK: - Public properties
  
  let collectionView: UICollectionView = {
    let layout = HomeCollectionViewFlowLayout()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.backgroundColor = .clear
    collectionView.register(HomeCollectionViewCell.self)
    return collectionView
  }()
  
  // MARK: - Private properties
  
  private var backgroundGradientLayer = CAGradientLayer()
  
  // MARK: - Init
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    backgroundGradientLayer.frame = self.bounds
  }
  
  // MARK: - Setup
  
  private func setupView() {
    setupUI()
    setupGradient()
  }
  
  private func setupUI() {
    addSubview(collectionView)
    collectionView.snp.makeConstraints {
      $0.leading.trailing.bottom.equalToSuperview()
      $0.top.equalTo(safeAreaLayoutGuide)
    }
  }
  
  private func setupGradient() {
    backgroundGradientLayer.frame = bounds
    backgroundGradientLayer.colors = [
      ColorName.mint.value.cgColor,
      ColorName.velvet.value.cgColor
    ]
    layer.insertSublayer(backgroundGradientLayer, at: 0)
  }
}
