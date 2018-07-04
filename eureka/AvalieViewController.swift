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
    }
    @IBOutlet weak var contadorEsforco: UILabel!
    @IBAction func sliderEsforco(_ sender: UISlider) {
        contadorEsforco.text = String(Int(sender.value))
    }
    @IBOutlet weak var contadorLucratividade: UILabel!
    @IBAction func sliderLucratividade(_ sender: UISlider) {
        contadorLucratividade.text = String(Int(sender.value))
    }
    @IBOutlet weak var contadorVisao: UILabel!
    @IBAction func sliderVisao(_ sender: UISlider) {
        contadorVisao.text = String(Int(sender.value))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
