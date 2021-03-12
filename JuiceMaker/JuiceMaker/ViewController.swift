//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let strawberry: JuiceMaker = JuiceMaker()
    }
    
//    @IBOutlet weak var fruitStock: UILabel!{
//
//    }
    
    @IBAction func stockSetting(_ sender: Any) {
    }
    // 에러 안나면
    @IBAction func orderAlert(_ sender: Any) {
        let juiceName: String = "**"
        
        let alert = UIAlertController(title: "주문 확인", message: "\(juiceName)쥬스 나왔습니다! 맛있게 드세요!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    // 에러 나면
    
    @IBAction func failOrder(_ sender: Any) {
        let failAlert = UIAlertController(title: nil , message: "재료가 모자라요 재고를 수정할까요?", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "아니오", style: .default, handler : nil )
        let stockSettingAction = UIAlertAction(title: "예", style: .cancel){ (action) in
            
        }
        failAlert.addAction(stockSettingAction)
        failAlert.addAction(cancel)

        present(failAlert, animated: true, completion: nil)
    }
    
}
