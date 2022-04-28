//
//  HorizontalSectionCell.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import Foundation

import UIKit

final class HorizontalSectionCell: UICollectionViewCell {
    
    static var reuseId = "HorizontalSectionCell"
    
    override var isHighlighted: Bool {
            didSet {
                if self.isHighlighted {
                    icon1.alpha = 0.5
                } else {
                    icon1.alpha = 0
                }
            }
        }
    
    let icon: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = Metric.cornerRadius
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let icon1: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = Metric.cornerRadius
        imageView.backgroundColor = .black
        imageView.alpha = 0
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let title: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.black
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subTitle: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.systemGray
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Private methods
extension HorizontalSectionCell {
    
    private func viewHierarchy() {
        addSubview(icon)
        addSubview(icon1)
        addSubview(title)
        addSubview(subTitle)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            icon.leftAnchor.constraint(equalTo: leftAnchor, constant: Metric.iconLeftAnchorConstant),
            icon.rightAnchor.constraint(equalTo: rightAnchor, constant: Metric.iconRightAnchorConstant),
            icon.topAnchor.constraint(equalTo: topAnchor, constant: Metric.iconTopAnchorConstant),
            
            icon1.topAnchor.constraint(equalTo: icon.topAnchor),
            icon1.bottomAnchor.constraint(equalTo: icon.bottomAnchor),
            icon1.leadingAnchor.constraint(equalTo: icon.leadingAnchor),
            icon1.trailingAnchor.constraint(equalTo: icon.trailingAnchor),
            
            title.leftAnchor.constraint(equalTo: leftAnchor, constant: Metric.titleLeftAnchorConstant),
            title.rightAnchor.constraint(equalTo: rightAnchor, constant: Metric.titleRightAnchorConstant),
            title.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: Metric.titleTopAnchorConstant),
            title.heightAnchor.constraint(equalToConstant: (Metric.titleHeightArchorConstant)),
            
            subTitle.leftAnchor.constraint(equalTo: leftAnchor, constant: Metric.subTitleLeftAnchorConstant),
            subTitle.rightAnchor.constraint(equalTo: rightAnchor, constant: Metric.subTitleRightAnchorConstant),
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor, constant: Metric.subTitleTopAnchorConstant),
            subTitle.bottomAnchor.constraint(equalTo: bottomAnchor),
            subTitle.heightAnchor.constraint(equalToConstant: (Metric.subTitleHeightArchorConstant))
        ])
    }
}
