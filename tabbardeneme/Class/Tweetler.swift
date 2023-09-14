//
//  Tweetler.swift
//  tabbardeneme
//
//  Created by Barış Aydemir on 12.08.2023.
//

import Foundation


class Tweetler {
    var tweet_id:Int?
    var tweet_pp:String?
    var tweet_user:String?
    var tweet_time:String?
    var tweet:String?
    
    init() {
        
    }
    
    init(tweet_id: Int, tweet_pp: String, tweet_time: String, tweet: String, tweet_user:String) {
        self.tweet_id = tweet_id
        self.tweet_pp = tweet_pp
        self.tweet_time = tweet_time
        self.tweet = tweet
        self.tweet_user = tweet_user
    }
}
