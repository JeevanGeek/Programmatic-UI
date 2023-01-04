//
//  ViewController.swift
//  Programmatic UI
//
//  Created by Jeevan Chandra Joshi on 04/01/23.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Screen"
        setupButton()
    }

    func setupButton() {
        view.addSubview(button)
        button.configuration = .filled()
        button.configuration?.title = "Next"
        button.configuration?.baseBackgroundColor = .systemPink
        button.addTarget(self, action: #selector(goto), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

    @objc func goto() {
        navigationController?.pushViewController(NextViewController(), animated: true)
    }
}
