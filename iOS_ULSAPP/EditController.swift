//
//  ModifcarController.swift
//  iOS_Contactos
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EditController: UIViewController
{
    var contacto : ContactoEmergencia?
    
    var nombre: String?
    var matricula: String?
    var celular1: String?
    var celular2: String?
    var cumpleanos: String?
    var paretesco: String?
    var callbackUpdate : ((String,String,String,String,String,String)-> Void)?

    @IBOutlet weak var imgContacto: UIImageView!
    @IBOutlet weak var NombreField: UITextField!
    @IBOutlet weak var MatriculaField: UITextField!
    @IBOutlet weak var CelularField: UITextField!
    @IBOutlet weak var CelularAuxField: UITextField!
    @IBOutlet weak var CumpleanosField: UITextField!
    @IBOutlet weak var ParentescoField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles del contacto"
        
        if nombre != nil {
            self.title = nombre
            NombreField.text = nombre
            MatriculaField.text = matricula
            CelularField.text = celular1
            CelularAuxField.text = celular2
            CumpleanosField.text = cumpleanos
            ParentescoField.text = paretesco
        }
        else {
            self.title = "Lel"
        }
        imgContacto.layer.cornerRadius = 120
        imgContacto.clipsToBounds = true
        imgContacto.layer.borderWidth = 0
        imgContacto.layer.borderColor = UIColor.clear.cgColor
        
    }
    @IBAction func doTapUpdate(_ sender: Any) {
        if callbackUpdate != nil
        {
            callbackUpdate!(NombreField.text!, MatriculaField.text!, CelularField.text!, CelularAuxField.text!, CumpleanosField.text!,ParentescoField.text!)
            self.navigationController?.popViewController(animated:  true)
        }
    }
    
}
