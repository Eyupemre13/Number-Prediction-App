//
//  ViewController2.swift
//  sayiTahmini
//
//  Created by Eyüp Emre Aygün on 12.04.2022.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var kalanHakLabel: UILabel!
    @IBOutlet weak var destekLabel: UILabel!
    @IBOutlet weak var girdiText: UITextField!
    
    var rasgeleSayi:Int?
    var kalanHak = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rasgeleSayi = Int(arc4random_uniform(100))
        print(rasgeleSayi!)

      
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gelenVeri  = sender as? Bool {
            let gidilecekView = segue.destination as! ViewController3
            gidilecekView.sonuc = gelenVeri
        }
    }
    
    @IBAction func tahminEt(_ sender: Any) {
        kalanHak -= 1
        destekLabel.isHidden = false

        
            if let tahmin = Int(girdiText.text!) {
                if tahmin == rasgeleSayi! {
                    let sonuc = true
                    
                    print(sonuc)
                    performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                    return
                    
                    
                }
                if tahmin < rasgeleSayi! {
                    destekLabel.text = "Arttır"
                    kalanHakLabel.text = "Kalan Hak : \(kalanHak)"
                }
                if tahmin > rasgeleSayi! {
                    destekLabel.text = "Azalt"
                    kalanHakLabel.text = "Kalan Hak : \(kalanHak)"
                }
                if (kalanHak == 0) {
                    let sonuc = false
                    print(sonuc)
                    performSegue(withIdentifier: "tahminToSonuc", sender: sonuc)
                    
                
                }
                
                
                
            
            girdiText.text = ""
           
            
        }
    }
    
    

}
