//
//  ThirdTabViewControllerDataSource.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//
import UIKit

extension ThirdTabViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[section].options.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch data[indexPath.section].type {
            
        case .oneRollHorizontalView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalSectionCell.reuseId, for: indexPath) as! HorizontalSectionCell
            cell.icon.image = data[indexPath.section].options[indexPath.row].icon
            cell.title.text = data[indexPath.section].options[indexPath.row].title
            cell.subTitle.text = data[indexPath.section].options[indexPath.row].detailTextLabel
            return cell
        case .twoRollHorizontalView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalSectionCell.reuseId, for: indexPath) as! HorizontalSectionCell
            cell.icon.image = data[indexPath.section].options[indexPath.row].icon
            cell.title.text = data[indexPath.section].options[indexPath.row].title
            cell.subTitle.text = data[indexPath.section].options[indexPath.row].detailTextLabel
            return cell
        case .verticalView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: VerticalSectionCell.reuseId, for: indexPath) as! VerticalSectionCell
            cell.icon.image = data[indexPath.section].options[indexPath.row].icon
            cell.title.text = data[indexPath.section].options[indexPath.row].title
            cell.subTitle.text = data[indexPath.section].options[indexPath.row].detailTextLabel
            
            if indexPath.row == (data[indexPath.section].options.count - 1) {
                cell.line.backgroundColor = UIColor.clear
            } else {
                cell.line.backgroundColor = UIColor.systemGray3
            }
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch indexPath.section {
        case 0:
            let header: FirstSectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: FirstSectionHeader.reuseId, for: indexPath) as! FirstSectionHeader
            header.title.text = data[indexPath.section].title
            header.button.addTarget(self, action: #selector(allButtonPressed), for: .touchUpInside)
          
            return header
        default:
            let header: SectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: SectionHeader.reuseId, for: indexPath) as! SectionHeader
            header.title.text = data[indexPath.section].title
            return header
        }
    }
    
    @objc func allButtonPressed(sender: UIButton) {
        print("Нажата кнопка \"Все\"")
    }
}
