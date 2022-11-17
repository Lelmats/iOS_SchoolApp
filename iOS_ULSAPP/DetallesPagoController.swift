//
//  DetallesMateriaController.swift
//  iOS_ULSAPP
//
//  Created by Alumno ULSA on 07/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesPagoController: UIViewController {
    
    var pagos : Pago?
    
    var callbackPago : (() -> Void)?
    
    @IBOutlet weak var lblMesPago: UILabel!
    @IBOutlet weak var lblFechaPago: UILabel!
    @IBOutlet weak var lblFechaPagoLim: UILabel!
    @IBOutlet weak var lblNumPago: UILabel!
    @IBOutlet weak var lblCantidadPagar: UILabel!
    
    @IBOutlet weak var btnPagar: UIButton!
    @IBOutlet weak var lblPagado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Detalles de Pago"
        
        if pagos != nil {
            self.title = pagos!.nombre
            
            lblMesPago.text = pagos!.nombre
            lblFechaPago.text = pagos!.fecha
            lblFechaPagoLim.text = pagos!.fechaLim
            lblNumPago.text = pagos!.numpago
            lblCantidadPagar.text = pagos!.cantidad

            lblPagado.isHidden = true
            
            if (pagos!.pagado == true){
                lblPagado.isHidden = false
                btnPagar.isEnabled = false;
            }
        }
        else {
            self.title = "No encontrado"
        }

        
    }
    @IBAction func onTapPagar(_ sender: Any) {
        if callbackPago != nil {
            pagos?.pagado = true
            callbackPago!()
            self.navigationController?.popViewController(animated:  true)
        }
        lblPagado.isHidden = false
        pagos?.pagado = true
        btnPagar.isEnabled = false;
    }

}
