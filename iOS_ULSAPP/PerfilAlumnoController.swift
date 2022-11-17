//
//  PerfilAlumnoController.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//


import UIKit

class PerfilAlumnoController: UIViewController
{
    @IBOutlet weak var imgPerfil: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        imgPerfil?.layer.cornerRadius = 120
        imgPerfil?.clipsToBounds = true
        imgPerfil?.layer.borderWidth = 0
        imgPerfil?.layer.borderColor = UIColor.clear.cgColor
    }
}
