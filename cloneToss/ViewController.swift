//
//  ViewController.swift
//  cloneToss
//
//  Created by JOSUEYEON on 2023/04/05.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    let firstView = BaseView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.initViews(superView: self.view)
        
    }
}
