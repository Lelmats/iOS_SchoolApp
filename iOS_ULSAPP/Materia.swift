//
//  Materia.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Materia{
    var nombre : String
    var hora : String
    var maestro : String
    var frontImg : String
    var asistencia : Bool
    var evaluacion : Int
    
    init(nombre : String, hora : String, maestro : String, frontImg : String, asistencia : Bool,evaluacion : Int)
    {
        self.nombre = nombre
        self.hora = hora
        self.maestro = maestro
        self.frontImg = frontImg
        self.asistencia = asistencia
        self.evaluacion = evaluacion
    }

}
