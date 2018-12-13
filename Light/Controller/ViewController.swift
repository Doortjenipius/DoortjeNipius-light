//
//  ViewController.swift
//  Light
//
//  Created by Doortje Nipius on 02-11-18.
//  Copyright © 2018 Doortje Nipius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }

    // Knop is gelinkt aan de functie buttonPressed. Zodra er wordt geklikt verandert hij naar lightOn of andersom en update hij in de updateUI de achtergrondkleur.
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    

    func randomBackground() -> UIColor {
        //drand48 geneert een nummer tussen 0 en 1.
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        
        // red, green en blue worden nu constant anders aangeroepen door drand48. 
        return UIColor(red:red, green: green, blue: blue, alpha: 1)
    }
    
    // Update de achtergrondkleur door randomBackground aan te roepen.
    func updateUI() {
        self.view.backgroundColor = randomBackground()
}

}

