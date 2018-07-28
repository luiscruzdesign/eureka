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
    @IBOutlet weak var atividadesChaveIdeia: UITextView!
    @IBOutlet weak var relacionamentoClientesIdeia: UITextView!
    @IBOutlet weak var recursosPrincipaisIdeia: UITextView!
    @IBOutlet weak var parceriasPrincipaisIdeia: UITextView!
    @IBOutlet weak var fontesReceitaIdeia: UITextView!
    @IBOutlet weak var estruturaCustosIdeia: UITextView!
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
        if atividadesChaveIdeia.text != "" {
            atividadesChave = atividadesChaveIdeia.text!
        }
        if relacionamentoClientesIdeia.text != "" {
            relacionamentoClientes = relacionamentoClientesIdeia.text!
        }
        if recursosPrincipaisIdeia.text != "" {
            recursosPrincipais = recursosPrincipaisIdeia.text!
        }
        if parceriasPrincipaisIdeia.text != "" {
            parceriasPrincipais = parceriasPrincipaisIdeia.text!
        }
        if fontesReceitaIdeia.text != "" {
            fontesReceita = fontesReceitaIdeia.text!
        }
        if estruturaCustosIdeia.text != "" {
            estruturaCustos = estruturaCustosIdeia.text!
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
        if atividadesChave != "" {
            atividadesChaveIdeia.text = atividadesChave
        }
        if relacionamentoClientes != "" {
            relacionamentoClientesIdeia.text = relacionamentoClientes
        }
        if recursosPrincipais != "" {
            recursosPrincipaisIdeia.text = recursosPrincipais
        }
        if parceriasPrincipais != "" {
            parceriasPrincipaisIdeia.text = parceriasPrincipais
        }
        if fontesReceita != "" {
            fontesReceitaIdeia.text = fontesReceita
        }
        if estruturaCustos != "" {
            estruturaCustosIdeia.text = estruturaCustos
        }
        
        /* nova ideia */
        print("------------ \nTela: INICIAL")
        print("Nome da ideia: " + nome)
        print("Descrição da ideia: " + descricao)
        print("Segmentos de mercado: " + segmentosMercado)
        print("Proposta de valor: " + propostaValor)
        print("Canais: " + canais)
        print("Atividades-chave: " + atividadesChave)
        print("Relacionamento com clientes: " +  relacionamentoClientes)
        print("Recursos principais: " + recursosPrincipais)
        print("Parcerias principais: " + parceriasPrincipais)
        print("Fontes de receita: " + fontesReceita)
        print("Estrutura de custos: " + estruturaCustos)
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
