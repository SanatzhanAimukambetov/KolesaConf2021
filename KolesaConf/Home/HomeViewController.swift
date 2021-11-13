import UIKit
import Lottie

final class HomeViewController: UIViewController, ViewHolder, NavigationBarAppearance {
    
    typealias RootViewType = HomeView
    
    // MARK: - Private properties
    
    private let data = HomeDataSource()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    override func loadView() {
        view = HomeView()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        title = "Спикеры"
        rootView.collectionView.dataSource = self
        setupNavigationBar()
    }
}

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    // MARK: - Extensions
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.speakers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = rootView.collectionView.dequeueReusableCell(forIndexPath: indexPath) as HomeCollectionViewCell
        cell.configure(with: data.speakers[indexPath.row])
        
        // Expensive work
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        // Expensive work
    }
}

public protocol NavigationBarAppearance {
    func setupNavigationBar()
}

extension NavigationBarAppearance where Self: UIViewController {
    public func setupNavigationBar() {
        let navigationBar = navigationController?.navigationBar
        if #available(iOS 11.0, *) {
            navigationBar?.prefersLargeTitles = true
            navigationBar?.largeTitleTextAttributes = [
                NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.75),
                NSAttributedString.Key.font: UIFont.systemFont(ofSize: 44, weight: .bold)
            ]
        }
        navigationBar?.tintColor = UIColor.white
        navigationBar?.layoutMargins.left = 35
        navigationBar?.barTintColor = ColorName.mint.value
        navigationBar?.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .bold)
        ]
    }
}
