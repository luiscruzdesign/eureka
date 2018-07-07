//
//  IdeiaViewController.swift
//  eureka
//
//  Created by Luís Eduardo S C Cruz on 06/07/18.
//  Copyright © 2018 Luís Eduardo S C Cruz. All rights reserved.
//

import UIKit

class IdeiaViewController: UIViewController {
    @IBOutlet weak var labelIdeia: UILabel!
    @IBOutlet weak var descricaoIdeia: UILabel!
    @IBOutlet weak var notaIdeia: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let notaGeral = ideiasImpacto[myIndex] + ideiasEsforco[myIndex] + ideiasLucratividade[myIndex] + ideiasVisao[myIndex]
        labelIdeia.text = ideiasNomes[myIndex]
        descricaoIdeia.text = ideiasDescricoes[myIndex]
        notaIdeia.text = "Nota geral: " + String(notaGeral)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
