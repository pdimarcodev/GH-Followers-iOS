//
//  UserInfoVC.swift
//  GHFollowers
//
//  Created by Pablo Dario Di Marco on 8/27/23.
//

import UIKit

// Modal View showing user info detail after tapping on the avatar
class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        // this is the right DONE button in the Modal
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        // Get user info for this user
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    // Close modal
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
