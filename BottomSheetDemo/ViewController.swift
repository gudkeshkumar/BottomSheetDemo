//
//  ViewController.swift
//  BottomSheetDemo
//
//  Created by Gudkesh on 11/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    private lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBlue
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        button.layer.cornerRadius = 5
        button.setTitle("Get Started", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        build()
    }

    @objc
    private func didTapButton(_ sender: UIButton) {
        let vc = CustomModalViewController()
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: false, completion: nil)
    }
}

extension ViewController {
    
    private func build() {
        buildHeirarchy()
        buildconstraints()
    }
    
    private func buildHeirarchy() {
        view.addSubview(button)
    }
    
    private func buildconstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150)
        ])
    }
}

