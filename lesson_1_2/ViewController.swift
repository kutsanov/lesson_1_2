//
//  ViewController.swift
//  lesson_1_2
//
//  Created by Vova Kutsanov on 25.02.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SignalRed: UIView!
    @IBOutlet weak var SignakYel: UIView!
    @IBOutlet weak var SignalGreen: UIView!
    
    
    @IBOutlet weak var BtnGo: UIButton!
    
    var SignaNow: String = "green"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SignalRed.layer.cornerRadius = 65
        SignakYel.layer.cornerRadius = 65
        SignalGreen.layer.cornerRadius = 65
        SignalRed.alpha = 0.3
        SignakYel.alpha = 0.3
        SignalGreen.alpha = 0.3
    }


    @IBAction func BtnGoAction() {
        BtnGo.setTitle("Next", for: .normal)
        if SignaNow == "green" {
            SignalRed.alpha = 1
            SignakYel.alpha = 0.3
            SignalGreen.alpha = 0.3
            SignaNow = "red"
        } else if SignaNow == "red" {
            SignalRed.alpha = 0.3
            SignakYel.alpha = 1
            SignalGreen.alpha = 0.3
            SignaNow = "yel"
        } else if SignaNow == "yel" {
                   SignalRed.alpha = 0.3
            SignakYel.alpha = 0.3
                   SignalGreen.alpha = 1
                   SignaNow = "green"
               }
        
    }
    
}

