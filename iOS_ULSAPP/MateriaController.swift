//
//  ViewController.swift
//  iOS_ULSAPP
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MateriaController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
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
        
        return celda!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Materias"
        
        Materias.append(Materia(nombre: "Dispositivos", hora: "9:00 AM", maestro: "Emiliano", frontImg: "PizzaConQueso"))
        Materias.append(Materia(nombre: "Diosito", hora: "11:00 AM", maestro: "Jorge Diosito", frontImg: "PizzaConQueso"))
        Materias.append(Materia(nombre: "Mercadotecnia", hora: "1:00 PM", maestro: "Yuri", frontImg: "PizzaConQueso"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let destino = segue.destination as! DetallesMateriaController
        destino.materia = Materias[tvMaterias.indexPathForSelectedRow!.row]
    }

}

