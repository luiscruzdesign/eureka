//
//  AvalieViewController.swift
//  eureka
//
//  Created by Luís Eduardo S C Cruz on 04/07/18.
//  Copyright © 2018 Luís Eduardo S C Cruz. All rights reserved.
//

import UIKit
import CoreData

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
        
        // Accessing Core Data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        // Inserting data
        let novaIdeia = NSEntityDescription.insertNewObject(forEntityName: "Ideia", into: context)
        
        novaIdeia.setValue(nome, forKey: "nome")
        novaIdeia.setValue(descricao, forKey: "descricao")
        novaIdeia.setValue(segmentosMercado, forKey: "segmentos_mercado")
        novaIdeia.setValue(propostaValor, forKey: "proposta_valor")
        novaIdeia.setValue(canais, forKey: "canais")
        novaIdeia.setValue(atividadesChave, forKey: "atividades_chave")
        novaIdeia.setValue(relacionamentoClientes, forKey: "relacao_cliente")
        novaIdeia.setValue(recursosPrincipais, forKey: "recursos_chave")
        novaIdeia.setValue(parceriasPrincipais, forKey: "parcerias_chave")
        novaIdeia.setValue(fontesReceita, forKey: "fontes_renda")
        novaIdeia.setValue(estruturaCustos, forKey: "estrutura_custo")
        novaIdeia.setValue(impacto, forKey: "impacto")
        novaIdeia.setValue(esforco, forKey: "esforco")
        novaIdeia.setValue(lucratividade, forKey: "lucratividade")
        novaIdeia.setValue(visao, forKey: "visao")
        
        do {
            try context.save()
            print("SAVED")
        } catch {
            // TREAT ERRORS
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        /*
        // Accessing Core Data
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        // Inserting data
        let novaIdeia = NSEntityDescription.insertNewObject(forEntityName: "Ideia", into: context)
        
        // Listagem de ideias para popular banco
        // 01
        novaIdeia.setValue("Fazer uma pousada", forKey: "nome")
        novaIdeia.setValue("Fazer uma pousada na beira do mar", forKey: "descricao")
        novaIdeia.setValue("Surfistas", forKey: "segmentos_mercado")
        novaIdeia.setValue("Simplicidade e conexão com a natureza", forKey: "proposta_valor")
        novaIdeia.setValue("Publicações sobre surf e cultura vegana, natureba", forKey: "canais")
        novaIdeia.setValue("Lorem ipsum", forKey: "estrutura_custo")
        novaIdeia.setValue("Lorem ipsum", forKey: "fontes_renda")
        novaIdeia.setValue("Lorem ipsum", forKey: "parcerias_chave")
        novaIdeia.setValue("Lorem ipsum", forKey: "recursos_chave")
        novaIdeia.setValue("Lorem ipsum", forKey: "relacao_cliente")
        novaIdeia.setValue("Lorem ipsum", forKey: "atividades_chave")
        novaIdeia.setValue(70, forKey: "impacto")
        novaIdeia.setValue(90, forKey: "esforco")
        novaIdeia.setValue(20, forKey: "lucratividade")
        novaIdeia.setValue(65, forKey: "visao")
        
        // 02
        novaIdeia.setValue("Ser dono de um bar", forKey: "nome")
        novaIdeia.setValue("Fazer um bar de rock e cervejas artesanais", forKey: "descricao")
        novaIdeia.setValue("Pessoas que gostam de rock anos 70", forKey: "segmentos_mercado")
        novaIdeia.setValue("O melhor lugar para ouvir rock na cidade", forKey: "proposta_valor")
        novaIdeia.setValue("Mídias sociais", forKey: "canais")
        novaIdeia.setValue("Lorem ipsum", forKey: "estrutura_custo")
        novaIdeia.setValue("Lorem ipsum", forKey: "fontes_renda")
        novaIdeia.setValue("Lorem ipsum", forKey: "parcerias_chave")
        novaIdeia.setValue("Lorem ipsum", forKey: "recursos_chave")
        novaIdeia.setValue("Lorem ipsum", forKey: "relacao_cliente")
        novaIdeia.setValue("Lorem ipsum", forKey: "atividades_chave")
        novaIdeia.setValue(50, forKey: "impacto")
        novaIdeia.setValue(90, forKey: "esforco")
        novaIdeia.setValue(40, forKey: "lucratividade")
        novaIdeia.setValue(70, forKey: "visao")
        // 03
        novaIdeia.setValue("Criar o novo Uber", forKey: "nome")
        novaIdeia.setValue("Fazer um benchmark dos concorrentes e montar a melhor ferramenta", forKey: "descricao")
        novaIdeia.setValue("Classe B e C", forKey: "segmentos_mercado")
        novaIdeia.setValue("Segurança e agilidade", forKey: "proposta_valor")
        novaIdeia.setValue("Mídias sociais", forKey: "canais")
        novaIdeia.setValue("Lorem ipsum", forKey: "estrutura_custo")
        novaIdeia.setValue("Lorem ipsum", forKey: "fontes_renda")
        novaIdeia.setValue("Lorem ipsum", forKey: "parcerias_chave")
        novaIdeia.setValue("Lorem ipsum", forKey: "recursos_chave")
        novaIdeia.setValue("Lorem ipsum", forKey: "relacao_cliente")
        novaIdeia.setValue("Lorem ipsum", forKey: "atividades_chave")
        novaIdeia.setValue(50, forKey: "impacto")
        novaIdeia.setValue(90, forKey: "esforco")
        novaIdeia.setValue(70, forKey: "lucratividade")
        novaIdeia.setValue(30, forKey: "visao")

        do {
            try context.save()
            print("SAVED")
        } catch {
            // TREAT ERRORS
        }*/
        
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
