//
//  ViewController.swift
//  iOS_ULSAPP
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MateriaController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    //var DetMatCon : DetallesMateriaController?

    @IBOutlet weak var tvMaterias: UITableView!

    var Materias : [Materia] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Materias.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as? CeldaMateriaController
        celda?.lblNombre.text = Materias[indexPath.row].nombre
        celda?.lblHorario.text = Materias[indexPath.row].hora
        celda?.imgFrontimg.image = UIImage(named: Materias[indexPath.row].frontImg)

        celda?.imgFrontimg.layer.cornerRadius = 5
        celda?.imgFrontimg.clipsToBounds = true
        celda?.imgFrontimg.layer.borderWidth = 0
        celda?.imgFrontimg.layer.borderColor = UIColor.clear.cgColor
        
        if (Materias[indexPath.row].asistencia == true)
        {
            celda?.imgAsistenciaCon.tintColor = UIColor(red: 0, green: 1, blue: 0.5, alpha: 1)
        }
        else {
            celda?.imgAsistenciaCon.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
        }
        
        return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Materias"
        
        Materias.append(Materia(nombre: "Dispositivos", hora: "9:00 AM", maestro: "Emiliano", frontImg: "dispositivos", asistencia: false, evaluacion : 2))
        Materias.append(Materia(nombre: "Diosito", hora: "11:00 AM", maestro: "Jorge Diosito", frontImg: "diosito", asistencia: false, evaluacion : 2))
        Materias.append(Materia(nombre: "Mercadotecnia", hora: "1:00 PM", maestro: "Yuri", frontImg: "mercadotecnia", asistencia: false, evaluacion : 2))

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destino = segue.destination as! DetallesMateriaController
        destino.materia = Materias[tvMaterias.indexPathForSelectedRow!.row]
        destino.callbackUpdate = checado
    }
    
    func checado(){
        tvMaterias.reloadData()
    }
    
}

