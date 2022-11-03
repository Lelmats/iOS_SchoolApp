//
//  MenuController.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 03/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tvMenu: UITableView!
    var Menus : [Menu] = []
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Menus.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMenu") as? CeldaMenuController
        celda?.lblNombre.text = Menus[indexPath.row].nombre
        celda?.lblDescripcion.text = Menus[indexPath.row].descripcion
        celda?.lblPrecio.text = Menus[indexPath.row].precio
        celda?.imgImagen.image = UIImage(named: Menus[indexPath.row].imagen)
        
        return celda!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Menus.append(Menu(nombre: "Pizza con queso", descripcion: "Deliciosa Pizza con quesito mmmmmmmh", precio: "$25", imagen: "PizzaConQueso"))
        Menus.append(Menu(nombre: "Cheez Burger", descripcion: "Clasica Habmurguesa con queso", precio: "$55", imagen: "PizzaConQueso"))
        Menus.append(Menu(nombre: "Pizza Burger", descripcion: "A quien no le gusta la Pizza y la hamburguesa??", precio: "$65", imagen: "PizzaConQueso"))
        Menus.append(Menu(nombre: "God Burger", descripcion: "Ta buena como un Dios!", precio: "$80", imagen: "PizzaConQueso"))
        Menus.append(Menu(nombre: "Huevo con jamon", descripcion: "Un desayuno honesto y sencillo", precio: "$35", imagen: "PizzaConQueso"))
        Menus.append(Menu(nombre: "Molletes", descripcion: "Unos clasicos melletones con queso, hechos con el amor de la cocinera", precio: "$35", imagen: "PizzaConQueso"))
        Menus.append(Menu(nombre: "Pan dulce", descripcion: "Deliciosa Pizza con quesito mmmmmmmh", precio: "$13", imagen: "PizzaConQueso"))

        
        tvMenu.reloadData()
    }
}