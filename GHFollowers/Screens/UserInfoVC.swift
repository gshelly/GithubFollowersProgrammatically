//
//  UserInfoVC.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/6/22.
//

import UIKit

class UserInfoVC: UIViewController {

    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc func dismissVC() {
        dismiss(animated: true, completion: nil)
    }
}
