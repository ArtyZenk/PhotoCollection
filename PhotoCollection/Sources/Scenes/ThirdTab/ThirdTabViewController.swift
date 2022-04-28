//
//  ThirdTabViewController.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import UIKit

final class ThirdTabViewController: UIViewController {
    
    let data = Section.getData()
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Альбомы"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
        
        let leftButtonItem = UIBarButtonItem.init(
            image: UIImage(systemName: "plus"),
            style: .done,
            target: self,
            action: #selector(leftButtonAction)
        )
        self.navigationItem.leftBarButtonItem = leftButtonItem
        
        setupCollectionView()
    }
    
    @objc private func leftButtonAction(sender: UIBarButtonItem) {
        print("add button pressed")
    }
    
    private func setupCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: setupCompositionLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        collectionView.register(VerticalSectionCell.self, forCellWithReuseIdentifier: VerticalSectionCell.reuseId)
        collectionView.register(HorizontalSectionCell.self, forCellWithReuseIdentifier: HorizontalSectionCell.reuseId)
        collectionView.register(SectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeader.reuseId)
        collectionView.register(FirstSectionHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: FirstSectionHeader.reuseId)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = UIColor.systemGray6
        
        view.addSubview(collectionView)
    }
    
    private func setupCompositionLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout  { (sectionIndex, layoutEnvironment) -> NSCollectionLayoutSection? in
            let section = self.data[sectionIndex]
            switch section.type {
            case .oneRollHorizontalView:
                return self.setupHorizontalViewSection()
            case .twoRollHorizontalView:
                return self.setupTwoRollHorizontalViewSection()
            default:
                return self.setupVerticalViewSection()
            }
        }
        return layout
    }
}
