//
//  DescrevaViewController.swift
//  eureka
//
//  Created by Luís Eduardo S C Cruz on 04/07/18.
//  Copyright © 2018 Luís Eduardo S C Cruz. All rights reserved.
//

import UIKit

class DescrevaViewController: UIViewController {
    @IBOutlet weak var nomeIdeia: UITextField!
    @IBOutlet weak var descricaoIdeia: UITextView!
    @IBAction func submitDescricao(_ sender: UIButton) {
        if nomeIdeia.text != "" {
            nome = nomeIdeia.text!
        }
        if descricaoIdeia.text != "" {
            descricao = descricaoIdeia.text!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if nome != "" {
            nomeIdeia.text = nome
        }
        if descricao != "" {
            descricaoIdeia.text = descricao
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
