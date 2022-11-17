//
//  Alumno.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Alumno{
    var nombre : String
    var matricula : String
    var edad : String
    var celular : String
    var imagen : String
    var cumpleanos : String
    var faltas : String
    
    init(nombre : String, cumpleanos : String, matricula : String, edad : String, celular : String, imagen : String, faltas : String)
    {
        self.nombre = nombre
        self.matricula = matricula
        self.edad = edad
        self.celular = celular
        self.imagen = imagen
        self.cumpleanos = cumpleanos
        self.faltas = faltas
    }

}
