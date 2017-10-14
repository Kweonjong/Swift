//
//  ViewController.swift
//  2015111457
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 Computer Science. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var textField: UITextField!
    @IBOutlet var button: UIButton!
    @IBOutlet var display: UILabel!
    
    let deptArray: [String] = ["컴퓨터학과", "디지털미디어학과"]
    let yearArray: Array<String> = ["1학년", "2학년", "3학년", "4학년"]
    let subjectCom:[String] = ["전공진로탐색 세미나 I\n프로그래밍의 이해","객체중심C++프로그래밍\n이산수학\n디지털디자인\n자바프로그래밍","데이더베이스 프로그래밍\n운영체제\n컴퓨터알고리즘\n시스템분석 및 설계","프로젝트설계실습\n컴퓨터그래픽스\nIT기술최신동향1"]
    let sujectDm:[String] = ["디지털미디어학 개론\n기초 C++ 프로그래밍\n디지털 그래픽 기초","컴퓨터 아키텍쳐\n자바 프로그래밍\nGUI 디자인\nMac/Unix시스템 활용\n모션 그래픽스\n데이터베이스","운영체제\n사용자경험 디자인\n3D 그래픽 응용\n모바일앱 프로그래밍","소프트웨어역량인증\n캡스톤 디자인 설계 2\nSpecial Topics in Digital Media 1\n모바일 인터페이스"]

    
    
    //component의 개수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2 }
    
    //component별 행의 개수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return deptArray.count
        } else {
            return yearArray.count
        }
    }
    
    //각 행에 대해 제목 설정
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return deptArray[row]
            }
        else {
            return yearArray[row]
            }
    }
    
    //행이 선택 될 때 텍스트필드에 텍스트를 업데이트
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let dept: String = deptArray[pickerView.selectedRow(inComponent: 0)]
        let year: String = yearArray[pickerView.selectedRow(inComponent: 1)]
        
        textField.text = dept + " , " + year
    }
    
    //텍스트필드를 클릭할때 피커뷰가 뜨도록 설정
    override func viewDidLoad() {
        super.viewDidLoad()
        let pickerView = UIPickerView()
        pickerView.delegate = self
        textField.inputView = pickerView
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //선택 버튼을 클릭시 label에 내용 업데이트
    @IBAction func getValue(_ sender: UIButton) {
        
        if textField.text == "컴퓨터학과 , 1학년"{
            display.text = subjectCom[0]
        }else if textField.text == "컴퓨터학과 , 2학년"{
            display.text = subjectCom[1]
        }else if textField.text == "컴퓨터학과 , 3학년"{
            display.text = subjectCom[2]
        }else if textField.text == "컴퓨터학과 , 4학년"{
            display.text = subjectCom[3]
        }else if textField.text == "디지털미디어학과 , 1학년"{
            display.text = sujectDm[0]
        }else if textField.text == "디지털미디어학과 , 2학년"{
            display.text = sujectDm[1]
        }else if textField.text == "디지털미디어학과 , 3학년"{
            display.text = sujectDm[2]
        }else if textField.text == "디지털미디어학과 , 4학년"{
            display.text = sujectDm[3]
        }
        
    }
    
 

   

}

