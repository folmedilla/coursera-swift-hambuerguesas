//
//  ViewController.swift
//  Hamburguesas
//
//  Created by folmedilla on 9/9/16.
//  Copyright © 2016 folmedilla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombrePais: UILabel!
    @IBOutlet weak var nombreHamburguesa: UILabel!
    @IBOutlet weak var precioHamburguesa: UILabel!
    
    var coleccionDePaises = ColeccionDePaises()
    var coleccionDeHamburguesas = ColeccionDeHamburguesas()
    var colores = Colores()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func cambiarPaisYHamburguesa() {
        
        nombrePais.text = coleccionDePaises.obtenerPais()
        nombreHamburguesa.text = coleccionDeHamburguesas.obtenerHamburguesa()
        precioHamburguesa.text = "＄\(coleccionDeHamburguesas.obtenerPrecioHambuerguesta())"
        
        let nuevoColor = colores.obtenerColor()
        view.backgroundColor = nuevoColor
        view.tintColor = nuevoColor
    }

}

