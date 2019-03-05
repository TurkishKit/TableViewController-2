//
//  ViewController.swift
//  TableviewController 2
//
//  Created by Ege Sucu on 2019-02-13.
//  Copyright © 2019 TurkishKit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
    
//    Global Değişkenler
    var kisiIsimleri = ["Ali","Ömer","Ayşe"]
    var kisiYaslari = ["19","25","45"]
    var kisiResimleri = [UIImage(named: "kisi1"),UIImage(named: "kisi2"),UIImage(named: "kisi3")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //    MARK: TableView fonksiyonları
    
//    Tabloda kaç hücre olduğunu belirttiğimiz fonksiyon
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        Arkadaş sayısı kadar hücre oluşturuyor.
        return kisiIsimleri.count
    }
    
//    Hücreyi oluşturduğumuz fonksiyon
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        Main.storyboard dosyasındaki hücreyi çağırıyoruz.
        let arkadas = tableView.dequeueReusableCell(withIdentifier: "kisi") as! TableViewCell
//        Hücreye isimleri yerleştiriyoruz.
        arkadas.isim.text = kisiIsimleri[indexPath.row]
//        Hücreye yaşları yerleştiriyoruz.
        arkadas.yas.text = kisiYaslari[indexPath.row]
//        Hücreye resimleri yerleştiriyoruz.
        arkadas.resim.image = kisiResimleri[indexPath.row]
//        Hücremiz hazır. Fonksiyona hücremizi çıktı olarak veriyoruz.
        return arkadas
        
    }
    
    
    


}

