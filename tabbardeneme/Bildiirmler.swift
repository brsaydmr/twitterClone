//
//  Bildiirmler.swift
//  tabbardeneme
//
//  Created by Barış Aydemir on 13.08.2023.
//

import Foundation

class Bildirimler {
    var profilePicture:String?
    var actionResim:String?
    var userName:String?
    var actionName:String?
    var tweet:String?
    
    init(profilePicture: String, actionResim: String, userName: String, actionName: String, tweet: String) {
        self.profilePicture = profilePicture
        self.actionResim = actionResim
        self.userName = userName
        self.actionName = actionName
        self.tweet = tweet
    }
    
    init() {
        
    }
}
