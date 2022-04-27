//
//  ThirdTabViewControllerDelegat.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import UIKit

extension ThirdTabViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Нажата \(data[indexPath.section].options[indexPath.row].title)")
    }
}
