//
//  TwoLinedButton.swift
//  TinyConstButton
//
//  Created by Sümeyye Kılıçoğlu on 16.09.2022.
//

import UIKit
struct TwoLinedButtonViewModel {
    let primaryText: String
    let secondaryText: String
}
class TwoLinedButton: UIButton {
    public let primaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    public let secondaryLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .regular)
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(primaryLabel)
        addSubview(secondaryLabel)
        clipsToBounds = true
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.secondarySystemBackground.cgColor
        backgroundColor = .systemGreen
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configure(with viewModel: TwoLinedButtonViewModel) {
        primaryLabel.text = viewModel.primaryText
        secondaryLabel.text = viewModel.secondaryText
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        primaryLabel.leftToSuperview().constant = 5
        primaryLabel.topToSuperview()
        primaryLabel.width(300)
        primaryLabel.height(40)
        
        secondaryLabel.leftToSuperview().constant = 50
        secondaryLabel.topToSuperview().constant = 30
        primaryLabel.width(300)
        primaryLabel.height(40)
        
        
        
//        primaryLabel.frame = CGRect(x: 5, y: 0, width: frame.size.width-10, height: frame.size.height/2)
//        secondaryLabel.frame = CGRect(x: 5, y: frame.size.height/2, width: frame.size.width-10, height: frame.size.height/2)
    }



}
