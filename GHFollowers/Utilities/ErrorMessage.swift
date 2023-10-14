//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Pablo Dario Di Marco on 5/2/22.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid"
    case unableToFavorite = "There was an error trying to favorite. Please try again."
    case alreadyInFavorites = "You've already favorited this user"
}
