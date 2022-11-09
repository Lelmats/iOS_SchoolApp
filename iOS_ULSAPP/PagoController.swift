//
//  PagoController.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 09/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//
import UIKit

class PagoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvPagos: UITableView!
    var Pagos : [Pago] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Pagos.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaPago") as? CeldaPagoController
        celda?.lblNombre.text = Pagos[indexPath.row].nombre
        celda?.lblNum.text = Pagos[indexPath.row].numpago
        celda?.lblCantidad.text = Pagos[indexPath.row].cantidad
        celda?.lblFechaI.text = Pagos[indexPath.row].fecha
        celda?.lblFechaF.text = Pagos[indexPath.row].fechaLim
        return celda!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Pagos.append(Pago(nombre: "Enero", numpago: "2334", cantidad: "$3945 Peso", fecha: "Enero 27", fechaLim: "Febrero 1"))
        Pagos.append(Pago(nombre: "Febrero", numpago: "2523", cantidad: "$3945 Peso", fecha: "Febrero 27", fechaLim: "Marzo 1"))
        Pagos.append(Pago(nombre: "Marzo", numpago: "12341", cantidad: "$3945 Peso", fecha: "Marzo 27", fechaLim: "Abril 1"))
        Pagos.append(Pago(nombre: "Abril", numpago: "4325", cantidad: "$3945 Peso", fecha: "Abril 27", fechaLim: "Mayo 1"))
        Pagos.append(Pago(nombre: "Mayo", numpago: "23455", cantidad: "$4533 Peso", fecha: "Mayo 27", fechaLim: "Junio 1"))


        
        tvPagos.reloadData()
    }
}
