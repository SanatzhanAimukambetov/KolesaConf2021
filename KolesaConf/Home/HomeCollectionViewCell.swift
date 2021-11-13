import UIKit
import SnapKit

final class HomeCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Private properties
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18)
        label.textColor = ColorName.darkblue.value
        label.isOpaque = true
        label.backgroundColor = .white
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.isOpaque = true
        return imageView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = ColorName.gray.value
        label.backgroundColor = .white
        return label
    }()
    
    private lazy var placeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 12
        imageView.layer.masksToBounds = true
        imageView.isOpaque = true
        return imageView
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupView() {
        setupUI()
        backgroundColor = .white
        layer.cornerRadius = 16
        layer.masksToBounds = true
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowRadius = 3
        layer.shadowOpacity = 0.1
        layer.shadowPath = UIBezierPath(roundedRect: bounds,
                                        byRoundingCorners: [.allCorners],
                                        cornerRadii: CGSize(width: 16, height: 16)).cgPath
    }
    
    private func setupUI() {
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.leading.top.trailing.equalToSuperview().inset(15)
        }
        
        contentView.addSubview(iconImageView)
        iconImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(17.28)
            $0.size.equalTo(10)
            $0.top.equalTo(titleLabel.snp.bottom).offset(11.12)
        }
        
        contentView.addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints {
            $0.left.equalTo(iconImageView.snp.right).offset(7.29)
            $0.centerY.equalTo(iconImageView)
        }
        
        contentView.addSubview(placeImageView)
        placeImageView.snp.makeConstraints {
            $0.leading.trailing.bottom.equalToSuperview().inset(11)
            $0.height.equalTo(placeImageView.snp.width)
        }
    }
    
    // MARK: - Public functions
    
    func configure(with model: Speaker) {
        titleLabel.text = model.name
        iconImageView.image = model.icon
        descriptionLabel.text = model.time
        placeImageView.image = model.image
    }
}

