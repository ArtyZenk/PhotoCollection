//
//  FirstSectionHeader.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import UIKit

final class FirstSectionHeader: UICollectionReusableView {
    
    static let reuseId = "FirstSectionHeader"
    
    let title = UILabel()
    let line = UILabel()
    
    lazy var button: UIButton = {
        var button = UIButton()
        button.setTitleColor(.systemBlue, for: .normal)
        button.backgroundColor = UIColor.clear
        button.isEnabled = true
        button.setTitle("Все", for: .normal)
        return button
    }()
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
        setupElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 }

// MARK: - Private methods
extension FirstSectionHeader {
    
    private func setupHierarchy() {
        addSubview(line)
        addSubview(title)
        addSubview(button)
    }
    
    private func setupLayout() {
        
        line.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            line.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.lineLeadingArchorConstant),
            line.trailingAnchor.constraint(equalTo: trailingAnchor),
            line.topAnchor.constraint(equalTo: topAnchor),
            line.heightAnchor.constraint(equalToConstant: Metric.lineHeightAnchorConstant),
            
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Metric.titleLeadingArchorConstant),
            title.centerYAnchor.constraint(equalTo: centerYAnchor, constant: Metric.titleCenterYAnchorConstant),
            title.heightAnchor.constraint(equalToConstant: Metric.titleHeightAnchorConstant),
            
            button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: Metric.buttonTrailingArchorConstant),
            button.centerYAnchor.constraint(equalTo: centerYAnchor, constant: Metric.buttonCenterYAnchorConstant)
            
        ])
    }
    
    private func setupElements() {
        title.textColor = .black
        title.font = UIFont.boldSystemFont(ofSize: Metric.titleFontSize)
        line.backgroundColor = .systemGray3
    }
}
