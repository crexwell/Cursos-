//
//  ViewController.swift
//  primerProyecto
//
//  Created by MacBook on 18/10/18.
//  Copyright © 2018 potato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var luzEncendida = true
    
    @IBOutlet weak var Lablel: UILabel!
    @IBOutlet weak var Boton: UIButton!
    
    @IBAction func viewButton(_ sender: UIButton) {
       
        luzEncendida = !luzEncendida
        updateUI()
    }
    
    func updateUI(){
        if luzEncendida {
            view.backgroundColor = .white
            Lablel.text = "Encendido"
            Lablel.textColor = .black
            Boton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            Lablel.text = "Apagado"
            Lablel.textColor = .white
            Boton.setTitle("On", for: .normal)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    
    }
}

