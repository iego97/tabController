//
//  ViewController.swift
//  tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tbLugar: UITableView!
    
    let lugares : [Lugar] = [Lugar(nombre: "Cereso", descripcion: "Centro de reunión de gente importante", imagen: UIImage(named: "cereso")!),
                             Lugar(nombre: "Cocorit", descripcion: "Dominguito familiar y baraton", imagen: UIImage(named: "cocorit")!),
                             Lugar(nombre: "Laguna", descripcion: "Pasea a tu perro en armonía con la naturaleza pura del lugar", imagen: UIImage(named: "laguna")!),
                             Lugar(nombre: "Presa", descripcion: "Lugar para llevar a la morrita", imagen: UIImage(named: "presa")!),
                             Lugar(nombre: "Lugar", descripcion: "Casa de estudios de jovenes universitarios que no usan camión", imagen: UIImage(named: "ulsa")!)]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lugares.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "tableCell") as! TableCell
        
        celda.lblNombreLugar.text = lugares[indexPath.row].nombre
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetalleLugar"
        {
            let destino = segue.destination as? PlaceDetail
            destino?.lugar = lugares[(tbLugar.indexPathForSelectedRow?.row)!]
           
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

