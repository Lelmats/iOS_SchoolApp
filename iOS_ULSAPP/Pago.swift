//
//  Pago.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Pago{
    var nombre : String
    var numpago : String
    var fecha : String
    var fechaLim  : String
    
    init(nombre : String, numpago : String, fecha : String, fechaLim : String)
    {
        self.nombre = nombre
        self.numpago = numpago
        self.fecha = fecha
        self.fechaLim = fechaLim
    }

}
