//
//  User.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/4/22.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var bio: String?
    var location: String?
    var publicRepos: Int
    var publicGists: Int
    var followers: Int
    var following: Int
    var htmlUrl: String
    var createdAt: String
}
