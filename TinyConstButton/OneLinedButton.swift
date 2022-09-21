//
//  OneLinedButton.swift
//  TinyConstButton
//
//  Created by Sümeyye Kılıçoğlu on 16.09.2022.
//

import UIKit
import TinyConstraints


struct IconTextButtonViewModel {
    let text: String
    let image: UIImage?
    let backgroundColor: UIColor?
}

class OneLinedButton: UIButton {
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    private let iconImageView: UIImageView = {
        let image  = UIImageView()
        image.tintColor = .white
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label)
        addSubview(iconImageView)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        layoutSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(with viewModel: IconTextButtonViewModel) {
        label.text = viewModel.text
        backgroundColor = viewModel.backgroundColor
        iconImageView.image = viewModel.image
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        iconImageView.center(in: label, offset: CGPoint(x: 0 , y: 0))
        iconImageView.rightToSuperview().constant = -200
        iconImageView.width(30)
        iconImageView.height(20)
        
        
        label.topToSuperview().constant = 20
        label.leftToSuperview().constant = 125
        

    }

    

}
