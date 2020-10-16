//
//  ViewController.swift
//  Calculadora
//
//  Created by Cetys on 16/10/2020.
//  Copyright © 2020 Rocio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pantalla: UILabel!
    var elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero : Bool = false
    
    @IBAction func numeroPulsado(_ sender: UIButton) {
        var digito : String!
        digito = sender.currentTitle
        print(digito)
        
        if elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero {
            pantalla.text = pantalla.text! + digito
        } else {
            pantalla.text = digito
            elUsuarioEstaEnMedioDeLaEscrituraDeUnNumero = true
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

