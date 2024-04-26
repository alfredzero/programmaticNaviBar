//
//  ProfileViewController.swift
//  programmticNavBar
//
//  Created by Alfredo Amezcua on 4/25/24.
//

import UIKit

class ProfileViewController: UIViewController {
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Touch Me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        configureUI()
    }
    
    func configureUI() {
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 80),
            button.widthAnchor.constraint(equalToConstant: 300)
        ])
    }

    @objc func didTapButton() {
        self.navigationController?.pushViewController(NextViewController(), animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
