//
//  ViewController.swift
//  eureka
//
//  Created by Luís Eduardo S C Cruz on 30/06/18.
//  Copyright © 2018 Luís Eduardo S C Cruz. All rights reserved.
//

import UIKit

var nome = ""
var descricao = ""
var segmentosMercado = ""
var propostaValor = ""
var canais = ""
var impacto = 0
var esforco = 0
var lucratividade = 0
var visao = 0

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var contador_ideias: UILabel!
    
    let list = ["Fazer uma pousada",
                "Ser dono de um bar",
                "Criar o novo Uber",
                "Montar um time de futebol",
                "Vender hot dog",
                "Vender sushi na praia",
                "Programar um concorrente para o Fifa",
                "Criar uma marca de roupas",
                "Lançar uma nova criptomoeda",
                "Me naturalizar islandês e jogar na seleção",
                "Fazer cerveja artesanal",
                "Fazer uma banda de trash metal",
                "Criar um canal no YouTube sobre esportes"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* Contador de ideias na home */
        let listCount = list.count
        
        if listCount == 0 {
            // do nothing
        } else if listCount == 1 {
            contador_ideias.text = "Você tem " + String(listCount) + " ideia na lista"
        } else {
            contador_ideias.text = "Você tem " + String(listCount) + " ideias na lista"
        }
        
        /* nova ideia */
        print("------------ \nTela: INICIAL")
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


}

