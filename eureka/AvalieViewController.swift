//
//  AvalieViewController.swift
//  eureka
//
//  Created by Luís Eduardo S C Cruz on 04/07/18.
//  Copyright © 2018 Luís Eduardo S C Cruz. All rights reserved.
//

import UIKit

class AvalieViewController: UIViewController {
    @IBOutlet weak var contadorImpacto: UILabel!
    @IBAction func sliderImpacto(_ sender: UISlider) {
        contadorImpacto.text = String(Int(sender.value))
        impacto = Int(sender.value)
    }
    @IBOutlet weak var contadorEsforco: UILabel!
    @IBAction func sliderEsforco(_ sender: UISlider) {
        contadorEsforco.text = String(Int(sender.value))
        esforco = Int(sender.value)
    }
    @IBOutlet weak var contadorLucratividade: UILabel!
    @IBAction func sliderLucratividade(_ sender: UISlider) {
        contadorLucratividade.text = String(Int(sender.value))
        lucratividade = Int(sender.value)
    }
    @IBOutlet weak var contadorVisao: UILabel!
    @IBAction func sliderVisao(_ sender: UISlider) {
        contadorVisao.text = String(Int(sender.value))
        visao = Int(sender.value)
    }
    @IBAction func submitAvaliacao(_ sender: UIButton) {
        /* salve a ideia */
        print("------------ \n: SALVE A IDEIA")
        print("Nome da ideia: " + nome)
        print("Descrição da ideia: " + descricao)
        print("Segmentos de mercado: " + segmentosMercado)
        print("Proposta de valor: " + propostaValor)
        print("Canais: " + canais)
        print("Impacto: " + String(impacto))
        print("Esforço: " + String(esforco))
        print("Lucratividade: " + String(lucratividade))
        print("Visão: " + String(visao))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /* nova ideia */
        print("------------ \nTela: AVALIE A IDEIA")
        print("Nome da ideia: " + nome)
        print("Descrição da ideia: " + descricao)
        print("Segmentos de mercado: " + segmentosMercado)
        print("Proposta de valor: " + propostaValor)
        print("Canais: " + canais)
        print("Impacto: " + String(impacto))
        print("Esforço: " + String(esforco))
        print("Lucratividade: " + String(lucratividade))
        print("Visão: " + String(visao))
        
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
