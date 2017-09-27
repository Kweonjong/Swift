//
//  ViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 2017. 9. 27..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pizzaChicken: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
        let destVC = segue.destination as! OrderViewController
        
        let selected: String = pizzaChicken.titleForSegment(at: pizzaChicken.selectedSegmentIndex)!
        destVC.title = selected
        
        let makeString: String = "방금 \(selected)를 선택하셨습니다.\n 감사합니다"
        destVC.info = makeString
        
        }}


}

