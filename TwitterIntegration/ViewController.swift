//
//  ViewController.swift
//  TwitterIntegration
//
//  Created by Nazim Uddin on 1/1/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var logout: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        logout.isHidden = true
    }
    @IBAction func didTapLoginButton(_ sender: Any) {
        let loginVC = FHSTwitterEngine.shared()?.loginController(completionHandler: { (success) in
            self.login.isHidden = true
            self.logout.isHidden = false
        }) as? UIViewController
        self.present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func didTapLogutButton(_ sender: Any) {
        FHSTwitterEngine.shared()?.clearAccessToken()
        login.isHidden = false
        logout.isHidden = true
    }
    
}

