//
//  TestViewController.swift
//  cloneToss
//
//  Created by JOSUEYEON on 2023/04/12.
//

import UIKit
import SnapKit

class TestViewController: UIViewController {
    let firstView = BaseView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        setNavCustom()
        firstView.initViews(superView: self.view)
    }
    
    private func setNavCustom() {
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationItem.hidesBackButton = true
        
        let spacer = UIBarButtonItem(systemItem: .fixedSpace)
        spacer.width = 1
        let logo = UIBarButtonItem(image: UIImage(named: "tossLogo"), style: .plain, target: nil, action: nil)
        logo.tintColor = .blue
        
        let rightbtn1 = UIBarButtonItem(image: UIImage(systemName: "bell.fill"), style: .plain, target: nil, action: nil)
        rightbtn1.tintColor = .gray
        let rightbtn2 = UIBarButtonItem(image: UIImage(systemName: "location.north.fill"), style: .plain, target: nil, action: nil)
        rightbtn2.tintColor = .gray
        
        self.navigationItem.leftBarButtonItems = [spacer, logo]
        self.navigationItem.rightBarButtonItems = [rightbtn1, rightbtn2]
    }
}
