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
    var cantidad : String
    var fecha : String
    var fechaLim  : String
    var pagado : Bool
    
    init(nombre : String, numpago : String, cantidad : String, fecha : String, fechaLim : String, pagado : Bool)
    {
        self.nombre = nombre
        self.numpago = numpago
        self.cantidad = cantidad
        self.fecha = fecha
        self.fechaLim = fechaLim
        self.pagado = pagado
    }

}
