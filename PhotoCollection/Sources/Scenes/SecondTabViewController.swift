//
//  SecondTabViewController.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//
import UIKit

class SecondTabViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Для Вас"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
    }
}
