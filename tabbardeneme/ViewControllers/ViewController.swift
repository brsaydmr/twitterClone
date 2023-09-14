//
//  ViewController.swift
//  tabbardeneme
//
//  Created by Barış Aydemir on 9.08.2023.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var barButtonPicture: UIBarButtonItem!
    var tweetListesi = [Tweetler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.setTitle("", for: .normal)
        
        button.frame = CGRect(x: 330, y: 690, width: 50, height: 50)
        
               let normalImage = UIImage(named: "tweetAt")
               button.setBackgroundImage(normalImage, for: .normal)

        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        view.addSubview(button)
        
        segmentedControl.selectedSegmentIndex = 1
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let customButton = UIButton(type: .custom)
        customButton.setImage(UIImage(named: "profilepicture"), for: .normal)
        customButton.frame = CGRect(x: 0, y: 0, width: 15, height: 15)
        
        let customBarButtonItem = UIBarButtonItem(customView: customButton)
        
        navigationItem.leftBarButtonItem = customBarButtonItem
        
        

        
        let t1 = Tweetler(tweet_id: 1, tweet_pp: "profilepicture", tweet_time: "1 dk", tweet: "Taşı delen suyun kuvveti değil, damlaların sürekliliğidir.", tweet_user: "Barış Aydemir")
        let t2 = Tweetler(tweet_id: 2, tweet_pp: "profilepicture", tweet_time: "4 dk", tweet: "Arpa eken buğday biçmez.", tweet_user: "Barış Aydemir")
        let t3 = Tweetler(tweet_id: 3, tweet_pp: "profilepicture", tweet_time: "6 dk", tweet: "Balık ağa girdikten sonra yakalanır.", tweet_user: "Barış Aydemir")
        let t4 = Tweetler(tweet_id: 4, tweet_pp: "profilepicture", tweet_time: "12 dk", tweet: "Her işin başı sağlık.", tweet_user: "Barış Aydemir")
        let t5 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "15 dk", tweet: "Taşı delen suyun kuvveti değil, damlaların sürekliliğidir.", tweet_user: "Barış Aydemir")
        let t6 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "25 dk", tweet: "Yavaş yavaş gidip uzun ömür sür.", tweet_user: "Barış Aydemir")
        let t7 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "33 dk", tweet: "Akıllı kurt köpeğini evcilleştirir, akılsız köpek sahibini yolda bırakır.", tweet_user: "Barış Aydemir")
        let t8 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "37 dk", tweet: "Çalışmadan, yorulmadan, güzellik çıkmaz işin ucundan.", tweet_user: "Barış Aydemir")
        let t9 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "45 dk", tweet: "Herkes kendi kaderinin demircisidir.", tweet_user: "Barış Aydemir")
        let t10 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "51 dk", tweet: "Yavaş yavaş gidilirse uzak yol da aşıla.", tweet_user: "Barış Aydemir")
        let t11 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "57 dk", tweet: "Egemenlik verilmez, alınır.", tweet_user: "Barış Aydemir")
        let t12 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "59 dk", tweet: "Taşı delen suyun kuvveti değil, damlaların sürekliliğidir.", tweet_user: "Barış Aydemir")
        let t13 = Tweetler(tweet_id: 5, tweet_pp: "profilepicture", tweet_time: "1 s", tweet: "Akıllı arifin gönlüne akar.", tweet_user: "Barış Aydemir")
        
        tweetListesi.append(t1)
        tweetListesi.append(t2)
        tweetListesi.append(t3)
        tweetListesi.append(t4)
        tweetListesi.append(t5)
        tweetListesi.append(t6)
        tweetListesi.append(t7)
        tweetListesi.append(t8)
        tweetListesi.append(t9)
        tweetListesi.append(t10)
        tweetListesi.append(t11)
        tweetListesi.append(t12)
        tweetListesi.append(t13)

        
    }
    
    @objc func buttonTapped() {

    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tweetListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenTweet = tweetListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tweetHucre", for: indexPath) as! TweetTableViewCell
        
        cell.timeLabel.text = gelenTweet.tweet_time
        cell.tweetLabel.text = gelenTweet.tweet
        cell.kullaniciAdLabel.text = gelenTweet.tweet_user
        cell.profilePicture.image = UIImage(named: gelenTweet.tweet_pp!)

        //cell.tweetLabel.translatesAutoresizingMaskIntoConstraints = false
         //NSLayoutConstraint.activate([
             //cell.tweetLabel.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 30),
             //cell.tweetLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 100),
             //cell.tweetLabel.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: 50)
         //])
         
           
        return cell
    }
    
}

