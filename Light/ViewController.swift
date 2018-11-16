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

    // Knop is gelinkt aan deze functie.
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    // Update de achtergrondkleur van oranje naar groen.
    func updateUI() {
        view.backgroundColor = lightOn ? .orange : .green}
}

