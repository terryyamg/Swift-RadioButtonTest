//
//  ViewController.swift
//  RadioButtonTest
//
//  Created by USER on 2016/4/1.
//  Copyright © 2016年 terryyamg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SSRadioButtonControllerDelegate  {

    @IBOutlet weak var bt1: UIButton!
    @IBOutlet weak var bt2: UIButton!
    @IBOutlet weak var bt3: UIButton!
    
    var radioButtonController: SSRadioButtonsController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        radioButtonController = SSRadioButtonsController(buttons: bt1, bt2, bt3)
        radioButtonController!.delegate = self
        radioButtonController!.shouldLetDeSelect = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didSelectButton(aButton: UIButton?) {
        let currentButton = radioButtonController!.selectedButton()!
        print("點選\(currentButton.currentTitle!)")
    }


}

