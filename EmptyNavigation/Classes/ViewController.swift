//
//  ViewController.swift
//  EmptyNavigation
//
//  Created by user on 2023/07/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Root"
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
        let titleLabel = UILabel(frame: CGRect(x: 10, y: 120, width: 100, height: 100))
        titleLabel.text = "Hello World"
        self.view.addSubview(titleLabel)
        
        let button = UIButton(frame: CGRect(x: 10, y: 230, width: 50, height: 50))
        button.setTitle("Push", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(pushButton(_:)), for: .touchUpInside)
        self.view.addSubview(button)
    }

    @objc
    func pushButton(_ sender: Any) {
        self.navigationController?.pushViewController(FirstViewController(), animated: true)
    }
    
}

