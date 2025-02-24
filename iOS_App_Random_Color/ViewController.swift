//
//  ViewController.swift
//  iOS_App_Random_Color
//
//  Created by NH on 2/24/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Change Button 클릭 Action
    @IBAction func didTapChangeButton(_ sender: Any) {
        // 랜덤 RGB 값을 받기
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let randomColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
        // 배경색 랜덤 RGB 색으로 설정
        myView.backgroundColor = randomColor
        
        // RGB 출력을 위해 CGFloat 값에 255 곱한 값 저장
        // CGFloat은 0 부터 1 사이의 부동소수 값을 가지고 색을 표현하므로, 255를 곱하지 않으면 소수으로 출력
        let red = Int(randomRed * 255)
        let green = Int(randomGreen * 255)
        let blue = Int(randomBlue * 255)
        
        // 배경색 RGB 값 출력
        myLabel.text = "R: " + String(red) + ", G: " + String(green) + ", B: " + String(blue)
    }
    
    // Reset Buton 클릭 Action
    @IBAction func didTapResetButon(_ sender: Any) {
        // 배경색 흰색으로 변경을 위해 값 저장 변수
        let resetColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        // 배경색 흰색으로 변경
        myView.backgroundColor = resetColor
        
        // 배경색 RGB 값 출력
        myLabel.text = "R: 255, G: 255, B: 255"
    }
}
