//
//  ViewController3.swift
//  sayiTahmini
//
//  Created by Eyüp Emre Aygün on 12.04.2022.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var sonucImage: UIImageView!
    
    @IBOutlet weak var sonucLabel: UILabel!
    
    var sonuc:Bool?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = false
        self.navigationItem.title = "Sonuç Ekranı"
        
        
        if sonuc! {
            sonucLabel.text = "Kazandınız"
            sonucImage.image = UIImage(named: "mutlu")
        }
        else {
            sonucLabel.text = "Kaybettiniz"
            sonucImage.image = UIImage(named: "uzgun")
        }
        

       
    }
    
    
    @IBAction func tekrarOyna(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
  
  

}
