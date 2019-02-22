//
//  ViewController.swift
//  TableviewController 1
//
//  Created by Ege Sucu on 2019-02-13.
//  Copyright © 2019 TurkishKit. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
   
    
//    Global Değişkenler
    var arkadaşİsimleri = ["Ali","Ömer","Ayşe"]
    var arkadaşYaşları = ["19","25","45"]
    var arkadasResimleri = [UIImage(named: "arkadas1"),UIImage(named: "arkadas2"),UIImage(named: "arkadas3")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //    MARK: TableView fonksiyonları
    
//    Tabloda kaç hücre olduğunu belirttiğimiz fonksiyon
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        Arkadaş sayısı kadar hücre oluşturuyor.
        return arkadaşİsimleri.count
    }
    
//    Hücreyi oluşturduğumuz fonksiyon
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        Main.storyboard dosyasındaki hücreyi çağırıyoruz.
        let cell = tableView.dequeueReusableCell(withIdentifier: "arkadaş") as! ArkadasTableViewCell
//        Hücreye isimleri yerleştiriyoruz.
        cell.arkadasIsmi.text = arkadaşİsimleri[indexPath.row]
//        Hücreye yaşları yerleştiriyoruz.
        cell.arkadasYasi.text = arkadaşYaşları[indexPath.row]
//        Hücreye resimleri yerleştiriyoruz.
        cell.arkadasResmi.image = arkadasResimleri[indexPath.row]
//        Hücremiz hazır. Fonksiyona hücremizi çıktı olarak veriyoruz.
        return cell
        
    }
    
    
    


}

