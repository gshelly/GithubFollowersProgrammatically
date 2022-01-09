//
//  PersistenceManager.swift
//  GHFollowers
//
//  Created by Shelly Gupta on 1/8/22.
//

import Foundation

enum PersitenceActionType {
    case add, remove
}

struct PersistanceManager {
    static private let defaults = UserDefaults.standard
    
    enum Keys {
        static let favorites = "favorites"
    }
    
    static func update(with newFavorite: Follower, actionType: PersitenceActionType, completed: @escaping(GFError?) -> Void) {
        retrieveFavorites { result in
            switch result {
            case .success(let favorites):
                var retrievedFavorites = favorites
                print("retre",retrievedFavorites)
                print("new", newFavorite)
                
                switch actionType {
                case .add:
                    guard !retrievedFavorites.contains(newFavorite) else {
                        completed(.existingFavorite)
                        return
                    }
                    retrievedFavorites.append(newFavorite)
                case .remove:
                    retrievedFavorites.removeAll{ $0.login == newFavorite.login }
                }
                completed(saveFavorites(favorites: retrievedFavorites))
                
            case .failure(let error):
                completed(error)
            }
        }
    }
    
    static func retrieveFavorites(completed: @escaping(Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completed(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completed(.success(favorites))
        }
        catch {
            completed(.failure(.unableToFavorite))
        }
    }
    
    static func saveFavorites(favorites: [Follower]) -> GFError? {
        do {
            let encoder = JSONEncoder()
            let favoritesEncoded = try encoder.encode(favorites)
            defaults.set(favoritesEncoded, forKey: Keys.favorites)
            return nil
        }
        catch {
            return .unableToFavorite
        }
    }
}
