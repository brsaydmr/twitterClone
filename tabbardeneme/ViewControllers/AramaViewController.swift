//
//  AramaViewController.swift
//  tabbardeneme
//
//  Created by Barış Aydemir on 13.08.2023.
//

import UIKit

class AramaViewController: UIViewController {
    @IBOutlet weak var profilePictureİmageView: UIImageView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var settingsButton: UIButton!
    
    @IBOutlet weak var balikLabel: UILabel!
    
    @IBOutlet weak var aramaTableViewCell: UITableView!
    
    var aramaKonuListesi = [Gundemdekiler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aramaTableViewCell.delegate = self
        aramaTableViewCell.dataSource = self
        
        
        let g1 = Gundemdekiler(yazi1: "Çin Süper Ligi", yazi2: "#TaliscaFenerE", yazi3: "7772 Post")
        let g3 = Gundemdekiler(yazi1: "Yeni Teknoloji Lansmanı", yazi2: "#KriptoParaHaberleri", yazi3: "Dünya Çevre Günü")
        let g4 = Gundemdekiler(yazi1: "COVID-19 Aşısı Güncellemesi", yazi2: "#SpaceX", yazi3: "Film Festivali Kazananları")
        let g5 = Gundemdekiler(yazi1: "Politik Gelişmeler", yazi2: "#GameofThrones", yazi3: "Yeni Sanat Sergisi")
        let g6 = Gundemdekiler(yazi1: "İklim Değişikliği Eylemleri", yazi2: "#AppleEvent", yazi3: "Yeni Müzik Albümü")
        let g7 = Gundemdekiler(yazi1: "Dünya Kupası Maç Sonuçları", yazi2: "#Bitcoin", yazi3: "Kampanya Başlangıcı")
        let g8 = Gundemdekiler(yazi1: "Teknoloji Gelişmeleri", yazi2: "#Netflix", yazi3: "Spor Etkinlikleri")
        let g9 = Gundemdekiler(yazi1: "Sağlık Haberleri", yazi2: "#Eurovision", yazi3: "Moda Trendleri")
        let g10 = Gundemdekiler(yazi1: "Yeni Eğitim Programları", yazi2: "#NFT", yazi3: "Bilim Keşifleri")
        let g11 = Gundemdekiler(yazi1: "Yerel Siyasi Gelişmeler", yazi2: "#Gaming", yazi3: "Yemek Tarifleri")
        
        aramaKonuListesi.append(g1)
        aramaKonuListesi.append(g3)
        aramaKonuListesi.append(g4)
        aramaKonuListesi.append(g5)
        aramaKonuListesi.append(g6)
        aramaKonuListesi.append(g7)
        aramaKonuListesi.append(g8)
        aramaKonuListesi.append(g9)
        aramaKonuListesi.append(g10)
        aramaKonuListesi.append(g11)



    }
    


}

extension AramaViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aramaKonuListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenListe = aramaKonuListesi[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "aramaHucre", for: indexPath) as! AramaTableViewCell
        
        cell.label1.text = gelenListe.yazi1
        cell.label2.text = gelenListe.yazi2
        cell.label3.text = gelenListe.yazi3
        
        return cell

        
    }
    
    
    
}
