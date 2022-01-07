//
//  GFEmptyStateView.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/6/22.
//

import UIKit

class GFEmptyStateView: UIView {
    
    let messageLabel = GFTitleLabel(textAlignment: .center, fontSize: 28)
    let emptyImage = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(message: String) {
        super.init(frame: .zero)
        messageLabel.text = message
        configure()
    }
    
    private func configure() {
        addSubview(messageLabel)
        addSubview(emptyImage)
        messageLabel.textColor = .secondaryLabel
        messageLabel.numberOfLines = 3
        
        emptyImage.image = #imageLiteral(resourceName: "empty-state-logo")
        emptyImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -140),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            messageLabel.heightAnchor.constraint(equalToConstant: 200),
            
            emptyImage.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            emptyImage.heightAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1.3),
            emptyImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 150),
            emptyImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 80)
        ])
    }
}
