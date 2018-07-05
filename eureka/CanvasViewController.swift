//
//  CanvasViewController.swift
//  eureka
//
//  Created by Luís Eduardo S C Cruz on 04/07/18.
//  Copyright © 2018 Luís Eduardo S C Cruz. All rights reserved.
//

import UIKit

class CanvasViewController: UIViewController {
    @IBOutlet weak var segmentosIdeia: UITextView!
    @IBOutlet weak var propostaValorIdeia: UITextView!
    @IBOutlet weak var canaisIdeia: UITextView!
    @IBAction func submitCanvas(_ sender: UIButton) {
        if segmentosIdeia.text != "" {
            segmentosMercado = segmentosIdeia.text!
        }
        if propostaValorIdeia.text != "" {
            propostaValor = propostaValorIdeia.text!
        }
        if canaisIdeia.text != "" {
            canais = canaisIdeia.text!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if segmentosMercado != "" {
            segmentosIdeia.text = segmentosMercado
        }
        if propostaValor != ""  {
            propostaValorIdeia.text = propostaValor
        }
        if canais != "" {
            canaisIdeia.text = canais
        }
        
        /* nova ideia */
        print("------------ \nTela: CANVAS DA IDEIA")
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
