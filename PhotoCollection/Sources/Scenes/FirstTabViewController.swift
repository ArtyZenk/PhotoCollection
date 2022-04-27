//
//  FirstTabViewController.swift
//  PhotoCollection
//
//  Created by Artyom Guzenko on 27.04.2022.
//

import UIKit

class FirstTabViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Медиатека"
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemGray6
    }
}
