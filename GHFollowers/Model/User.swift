//
//  User.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/4/22.
//

import Foundation

struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var bio: String?
    var location: String?
    let publicRepos: Int
    let publicGists: Int
    let followers: Int
    let following: Int
    let htmlUrl: String
    let createdAt: String
}
