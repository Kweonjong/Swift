//
//  OrderViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 2017. 9. 27..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {
    
    @IBOutlet var infoLabel: UILabel!
    var info: String? //백프로 확실할때 ! 일반적으론 ? //정보를 받아올(피자/치킨) 변수 선언

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let ttt = info{
        infoLabel.text = info //nill값이 올 수도 있음
        }
    }

    
    
    

}
