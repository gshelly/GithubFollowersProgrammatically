//
//  GFFollowerInfoVC.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/7/22.
//

import UIKit

class GFFollowerInfoVC: GFItemInfoSuperVC {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureFollower()
    }
    
    func configureFollower() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
}
