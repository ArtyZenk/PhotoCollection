//
//  SectionHeader.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import UIKit

final class SectionHeader: UICollectionReusableView {
    
    static let reuseId = "SectionHeader"
    
    let title = UILabel()
    let line = UILabel()
     
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewHierarchy()
        setupLayout()
        setupElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private methods
extension SectionHeader {
    
    private func viewHierarchy() {
        addSubview(line)
        addSubview(title)
    }
    
    private func setupLayout() {
        line.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            line.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.lineLeadingArchorConstant),
            line.trailingAnchor.constraint(equalTo: trailingAnchor),
            line.topAnchor.constraint(equalTo: topAnchor),
            line.heightAnchor.constraint(equalToConstant: Metric.lineHeightAnchorConstant),
            
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.titleLeadingArchorConstant),
            title.centerYAnchor.constraint(equalTo: centerYAnchor, constant: Metric.titleCenterYAnchorConstant),
            title.heightAnchor.constraint(equalToConstant: Metric.titleHeightAnchorConstant)
        ])
    }
    
    private func setupElements() {
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: Metric.titleFontSize)
        
        line.backgroundColor = UIColor.systemGray3
    }
}
