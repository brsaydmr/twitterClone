//
//  Mesajlar.swift
//  tabbardeneme
//
//  Created by Barış Aydemir on 13.08.2023.
//

import Foundation

class Mesajlar {
    var profilResim:String?
    var kullaniciAdi:String?
    var KullaniciAdi2:String?
    var tarih:String?
    var mesaj:String?
    
    init(profilResim: String, kullaniciAdi: String, KullaniciAdi2: String, tarih: String, mesaj: String) {
        self.profilResim = profilResim
        self.kullaniciAdi = kullaniciAdi
        self.KullaniciAdi2 = KullaniciAdi2
        self.tarih = tarih
        self.mesaj = mesaj
    }
    
    init() {
        
    }
}
