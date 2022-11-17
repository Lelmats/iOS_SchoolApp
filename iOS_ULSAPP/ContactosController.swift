//
//  ViewController.swift
//  iOS_Contactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ContactosController: UIViewController{
        
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblCelular: UILabel!
    @IBOutlet weak var lblCelularAux: UILabel!
    @IBOutlet weak var lblCumpleanos: UILabel!
    @IBOutlet weak var lblParentesco: UILabel!
    @IBOutlet weak var imgContacto: UIImageView!
    
    @IBOutlet var ViewContacto: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imgContacto.layer.cornerRadius = 120
        imgContacto.clipsToBounds = true
        imgContacto.layer.borderWidth = 0
        imgContacto.layer.borderColor = UIColor.clear.cgColor
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destino = segue.destination as! EditController
        destino.nombre = lblNombre.text
        destino.matricula = lblMatricula.text
        destino.celular1 = lblCelular.text
        destino.celular2 = lblCelularAux.text
        destino.cumpleanos = lblCumpleanos.text
        destino.paretesco = lblParentesco.text

        destino.callbackUpdate = actualizarTexto
        
    }
    
    func actualizarTexto(nombre : String, matricula : String, celular1 : String, celular2 : String, cumpleanos : String, parentesco : String){
        lblNombre.text = nombre
        lblMatricula.text = matricula
        lblCelular.text = celular1
        lblCelularAux.text = celular2
        lblCumpleanos.text = cumpleanos
        lblParentesco.text = parentesco

    }
}

