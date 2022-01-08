//
//  GFRepoInfoVC.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/7/22.
//

import UIKit

class GFRepoInfoVC: GFItemInfoSuperVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureRepo()
    }
    
    func configureRepo() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
}
