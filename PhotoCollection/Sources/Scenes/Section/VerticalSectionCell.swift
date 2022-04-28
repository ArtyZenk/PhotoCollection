//
//  VerticalSectionCell.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import UIKit

final class VerticalSectionCell: UICollectionViewCell {
    
    static var reuseId = "VerticalSectionCell"
    
    let icon = UIImageView()
    let title = UILabel()
    let subTitle = UILabel()
    let accessoryIcon = UIImageView()
    let line = UILabel()
    
    override var isHighlighted: Bool {
            didSet {
                if self.isHighlighted {
                    backgroundColor = UIColor.systemGray3
                } else {
                    backgroundColor = UIColor.systemGray6
                }
            }
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        
        icon.contentMode = .scaleAspectFit
        accessoryIcon.image = UIImage(named: "chevron")?.withTintColor(.systemGray)
        title.textColor = UIColor.systemBlue
        title.font = UIFont.systemFont(ofSize: Metric.titleFontSize)
        subTitle.textColor = UIColor.systemGray
        line.backgroundColor = UIColor.systemGray3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Private methods
extension VerticalSectionCell {
    
    private func viewHierarchy() {
        addSubview(icon)
        addSubview(title)
        addSubview(subTitle)
        addSubview(accessoryIcon)
        addSubview(line)
    }
    
    private func setupLayout() {
        
        icon.translatesAutoresizingMaskIntoConstraints = false
        accessoryIcon.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        line.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            icon.leadingAnchor.constraint(equalTo: leadingAnchor),
            icon.centerYAnchor.constraint(equalTo: centerYAnchor),
            icon.widthAnchor.constraint(equalToConstant: Metric.iconWidthAnchorConstant),
            icon.heightAnchor.constraint(equalToConstant: Metric.iconHeightAnchorConstant),
            
            accessoryIcon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: Metric.accessoryIconTrailingAnchorConstant),
            accessoryIcon.centerYAnchor.constraint(equalTo: centerYAnchor),
            accessoryIcon.widthAnchor.constraint(equalToConstant: Metric.accessoryIconWidthAnchorConstant),
            accessoryIcon.heightAnchor.constraint(equalToConstant: Metric.accessoryIconHeightAnchorConstant),
            
            title.leadingAnchor.constraint(equalTo: icon.trailingAnchor, constant: Metric.titleLeadingArchorConstant),
            title.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            subTitle.trailingAnchor.constraint(equalTo: accessoryIcon.leadingAnchor, constant: Metric.subTitleTrailingArchorConstant),
            subTitle.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            line.leadingAnchor.constraint(equalTo: icon.trailingAnchor),
            line.trailingAnchor.constraint(equalTo: trailingAnchor),
            line.topAnchor.constraint(equalTo: bottomAnchor, constant: Metric.lineTopAnchorConstant),
            line.heightAnchor.constraint(equalToConstant: Metric.lineHeightAnchorConstant)
        ])
    }
}
