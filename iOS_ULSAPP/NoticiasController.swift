//
//  ViewController.swift
//  iOS_ULSAPP
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class NoticiasController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    //var DetMatCon : DetallesMateriaController?
    @IBOutlet weak var tvNoticias: UITableView!

    var Noticias : [Noticia] = []

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 240
    }
    //Nùmero de secciones que tiene mi table view
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Noticias.count
    }
    
    //Construye cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaNoticia") as? CeldaNoticiaController
        celda?.lblNombre.text = Noticias[indexPath.row].nombre
        celda?.lblDescription.text = Noticias[indexPath.row].descripcion
        celda?.imgImagen.image = UIImage(named: Noticias[indexPath.row].imagen)

        
        return celda!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Materias"
        
        Noticias.append(Noticia(nombre: "Literatura", imagen: "literaria", descripcion: "El rector a punto de dar su comunicado el dia de mañana."))
        Noticias.append(Noticia(nombre: "Encuentro estudiantil", imagen: "encuentro", descripcion: "Los jovenes deciden hacer un encuentro!."))
        Noticias.append(Noticia(nombre: "Consejo estudiantil", imagen: "junta", descripcion: "Se crea fecha para la junta estudiantil."))
        Noticias.append(Noticia(nombre: "Concurso", imagen: "concurso", descripcion: "Aqui se verá a los mejores jovenes en cada aspecto."))

    }
    
    
}

