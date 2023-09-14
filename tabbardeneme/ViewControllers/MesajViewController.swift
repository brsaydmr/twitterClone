//
//  MesajViewController.swift
//  tabbardeneme
//
//  Created by Barış Aydemir on 13.08.2023.
//

import UIKit

class MesajViewController: UIViewController {

    @IBOutlet weak var profilePicture: UIImageView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var mesajTableViewCell: UITableView!
    
    var mesajListesi = [Mesajlar]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Butonu oluşturun
        let button = UIButton(type: .system)
        button.setTitle("", for: .normal)
        
        // Butonun boyutunu ve konumunu ayarlayın
        button.frame = CGRect(x: 330, y: 690, width: 50, height: 50)
        
        // Butonun arkaplan resmini ayarlayın
               let normalImage = UIImage(named: "sendmessage") // "normal_image" adlı resmi eklemelisiniz
               button.setBackgroundImage(normalImage, for: .normal)

        // Butonun tıklanma olayını belirleyin
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        // Butonu görünüme ekleyin
        view.addSubview(button)
        
        mesajTableViewCell.delegate = self
        mesajTableViewCell.dataSource = self
        
        let m1 = Mesajlar(profilResim: "profilepicture", kullaniciAdi: "Barış Aydemir", KullaniciAdi2: "@brsaydmr", tarih: "·13 Agu", mesaj: "Sizin gibi bir profesyonelle çalışmak, gerçekten ilham verici.")
        let m2 = Mesajlar(profilResim: "profilepicture", kullaniciAdi: "Barış Aydemir", KullaniciAdi2: "@brsaydmr", tarih: "·12 Agu", mesaj: "Siz olmadan bu projeyi başaramazdım, desteğiniz için teşekkür ederim.")
        let m3 = Mesajlar(profilResim: "profilepicture", kullaniciAdi: "Barış Aydemir", KullaniciAdi2: "@brsaydmr", tarih: "·11 Agu", mesaj: "Sizin gibi bir profesyonelle çalışmak, gerçekten ilham verici.")
        let m4 = Mesajlar(profilResim: "profilepicture", kullaniciAdi: "Barış Aydemir", KullaniciAdi2: "@brsaydmr", tarih: "·10 Agu", mesaj: "Sizden öğreneceğim daha çok şey olduğunu bilmek, beni motive ediyor.")
        let m5 = Mesajlar(profilResim: "profilepicture", kullaniciAdi: "Barış Aydemir", KullaniciAdi2: "@brsaydmr", tarih: "·09 Agu", mesaj: "Sizlerle bir ekip olmak, her zaman verimli ve keyifli bir deneyim.")
        
        mesajListesi.append(m1)
        mesajListesi.append(m2)
        mesajListesi.append(m3)
        mesajListesi.append(m4)
        mesajListesi.append(m5)


        
                
    }

    @IBAction func settingsButton(_ sender: Any) {
    }
    
    @objc func buttonTapped() {
        // Butona tıklandığında yapılacak işlemleri burada belirleyebilirsiniz
    }
}


extension MesajViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return mesajListesi.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenListe = mesajListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mesajHucre", for: indexPath) as! MesajTableViewCell
        
        cell.dateLabel.text = gelenListe.tarih
        cell.mesajLabel.text = gelenListe.mesaj
        cell.userNameLabel.text = gelenListe.kullaniciAdi
        cell.user2Label.text = gelenListe.KullaniciAdi2
        cell.profilePicture.image = UIImage(named: "\(gelenListe.profilResim!)")
        

        
        return cell

        
    }
    
    
    
}
