//
//  BildirimViewController.swift
//  tabbardeneme
//
//  Created by Barış Aydemir on 13.08.2023.
//

import UIKit

class BildirimViewController: UIViewController {

    @IBOutlet weak var profilePictureİmage: UIImageView!
    
    @IBOutlet weak var bildirimlerLabel: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bildirimTableView: UITableView!
    
    var gelenBildirimListesi = [Bildirimler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bildirimTableView.delegate = self
        bildirimTableView.dataSource = self
        

        let b1 = Bildirimler(profilePicture: "profilepicture", actionResim: "heart", userName: "brsaydmr", actionName: "Tweetini Beğendi", tweet: "Yavaş yavaş gidip uzun ömür sür.")
        
        let b2 = Bildirimler(profilePicture: "profilepicture", actionResim: "loop", userName: "brsaydmr", actionName: "Tweetini Retweetledi", tweet: "Yavaş yavaş gidip uzun ömür sür.")
        let b3 = Bildirimler(profilePicture: "profilepicture", actionResim: "heart", userName: "brsaydmr", actionName: "Tweetini Beğendi", tweet: "Herkes kendi kaderinin demircisidir.")
        let b4 = Bildirimler(profilePicture: "profilepicture", actionResim: "loop", userName: "brsaydmr", actionName: "Tweetini Retweetledi", tweet: "Egemenlik verilmez, alınır.")
        let b5 = Bildirimler(profilePicture: "profilepicture", actionResim: "heart", userName: "brsaydmr", actionName: "Tweetini Beğendi", tweet: "Yavaş yavaş gidip uzun ömür sür.")
        let b6 = Bildirimler(profilePicture: "profilepicture", actionResim: "loop", userName: "brsaydmr", actionName: "Tweetini Retweetledi", tweet: "Yavaş yavaş gidip uzun ömür sür.")
        
        
        
        
        gelenBildirimListesi.append(b1)
        gelenBildirimListesi.append(b2)
        gelenBildirimListesi.append(b3)
        gelenBildirimListesi.append(b4)
        gelenBildirimListesi.append(b5)
        gelenBildirimListesi.append(b6)





    }
    
    @IBAction func settingsButton(_ sender: Any) {
        
        
    }
    

}

extension BildirimViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gelenBildirimListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenListe = gelenBildirimListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "bildirimHucre", for: indexPath) as! BildirimTableViewCell
        
        cell.actionNameLabel.text = gelenListe.actionName
        cell.tweetLabel.text = gelenListe.tweet
        cell.userNameLabel.text = gelenListe.userName

        cell.profilePicture.image = UIImage(named: "\(gelenListe.profilePicture!)")
        cell.actionIcon.image = UIImage(named: "\(gelenListe.actionResim!)")
        
        
        return cell

        
    }
    
    
    
}
