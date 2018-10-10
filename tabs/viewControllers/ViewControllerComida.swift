//
//  ViewControllerComida.swift
//  tabs
//
//  Created by Alumno on 09/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerComida : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    @IBOutlet weak var tbPlatillos: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.platillos.count}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPlatillo") as! CeldaPlatillo
        
        celda.lblCeldaPlatillo.text = Datos.platillos[indexPath.row].nombre
        celda.imageCeldaPlatillo.image = Datos.platillos[indexPath.row].imagenLista
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallePlatilloController
        destino.platillo = Datos.platillos[(tbPlatillos.indexPathForSelectedRow?.row)!]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Menu"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
