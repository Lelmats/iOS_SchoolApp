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
    @IBOutlet weak var lblFaltas: UILabel!
    
    @IBOutlet weak var smEvaluacion: UISegmentedControl!
    @IBOutlet weak var lblAsistencia: UILabel!
    
    var materia : Materia?
    var callbackUpdate: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Detalles de Materia"
        
        if materia != nil {
            self.title = materia!.nombre
            
            lblNombre.text = materia!.nombre
            lblHorario.text = materia!.hora
            lblMaestro.text = materia!.maestro
            imgFrontimg.image = UIImage(named: materia!.frontImg)
            lblAsistencia.isHidden = true
            lblFaltas.text = materia!.faltas
            
            if (materia!.asistencia == true){
                lblAsistencia.isHidden = false
                btnAsistencia.isEnabled = false;
            }
            
            lblCalificacion.text = "XXX"
            smEvaluacion.selectedSegmentIndex = materia!.evaluacion
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
        if callbackUpdate != nil {
            materia?.asistencia = true
            callbackUpdate!()
            self.navigationController?.popViewController(animated:  true)
        }
        lblAsistencia.isHidden = false
        materia?.asistencia = true
        btnAsistencia.isEnabled = false;
    }
    
    @IBAction func indexChanged(_ sender: Any) {
        switch smEvaluacion.selectedSegmentIndex
        {
        case 0:
            materia?.evaluacion = smEvaluacion.selectedSegmentIndex
            smEvaluacion.isEnabled = false
            lblCalificacion.text = "Malo"
        case 1:
            materia?.evaluacion = smEvaluacion.selectedSegmentIndex
            smEvaluacion.isEnabled = false
            lblCalificacion.text = "Meh"
        case 2:
            materia?.evaluacion = smEvaluacion.selectedSegmentIndex
            smEvaluacion.isEnabled = false
            lblCalificacion.text = "Medio"
        case 3:
            materia?.evaluacion = smEvaluacion.selectedSegmentIndex
            smEvaluacion.isEnabled = false
            lblCalificacion.text = "Bien"
        case 4:
            materia?.evaluacion = smEvaluacion.selectedSegmentIndex
            smEvaluacion.isEnabled = false
            lblCalificacion.text = "Excelente"
        default:
            break
        }
    }
}
