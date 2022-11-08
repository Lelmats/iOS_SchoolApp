//
//  ContactoEmer.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class ContactoEmergencia{
    var nombre : String
    var matricula : String
    var cumpleanos : String
    var parentesco : String
    var celular1 : String
    var celular2 : String

    init(nombre : String, matricula : String, cumpleanos : String, parentesco : String, celular1 : String, celular2 : String)
    {
        self.nombre = nombre
        self.matricula = matricula
        self.cumpleanos = cumpleanos
        self.parentesco = parentesco
        self.celular1 = celular1
        self.celular2 = celular2

    }

}
