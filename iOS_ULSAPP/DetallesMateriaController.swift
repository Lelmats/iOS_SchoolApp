//
//  DetallesMateriaController.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 07/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesMateriaController: UIViewController {
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgFrontimg: UIImageView!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var lblMaestro: UILabel!
    @IBOutlet weak var btnAsistencia: UIButton!
    @IBOutlet weak var lblCalificacion: UILabel!
    
    @IBOutlet weak var smEvaluacion: UISegmentedControl!
    @IBOutlet weak var lblAsistencia: UILabel!
    
    
    var materia : Materia?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAsistencia.isHidden = true
        
        self.title = "Detalles de Materia"
        
        if materia != nil {
            self.title = materia!.nombre
            
            lblNombre.text = materia!.nombre
            lblHorario.text = materia!.hora
            lblMaestro.text = materia!.maestro
            imgFrontimg.image = UIImage(named: materia!.frontImg)
            
            //imgFrontImg.layer.cornerRadius = 5
            //imgFrontImg.clipsToBounds = true
            //imgFrontImg.layer.borderWidth = 2
            //imgFrontImg.layer.borderColor = UIColor.gray.cgColor
        }
        else {
            self.title = "No encontrado"
        }
    }
    
    @IBAction func onTapAsistencia(_ sender: Any) {
        lblAsistencia.isHidden = false
        
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch smEvaluacion.selectedSegmentIndex
        {
        case 0:
            lblCalificacion.text = "Malo"
        case 1:
            lblCalificacion.text = "Meh"
        case 2:
            lblCalificacion.text = "Medio"
        case 3:
            lblCalificacion.text = "Bien"
        case 4:
            lblCalificacion.text = "GOD"
        default:
            break
        }
    }
}
